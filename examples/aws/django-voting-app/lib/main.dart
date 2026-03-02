import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_docker/index.dart' as docker;
import 'package:pulumi_mysql/index.dart' as mysql;
import 'package:pulumi_mysql/providers.dart' as mysqlproviders;

class DjangoVotingAppStack extends pulumi.Stack {
  late final pulumi.Output<String> appUrl;

  DjangoVotingAppStack() {
    final config = pulumi.Config();
    final sqlAdminName = config.require('sql-admin-name');
    final sqlAdminPassword = config.require('sql-admin-password');
    final sqlUserName = config.require('sql-user-name');
    final sqlUserPassword = config.require('sql-user-password');
    final djangoAdminName = config.require('django-admin-name');
    final djangoAdminPassword = config.require('django-admin-password');
    final djangoSecretKey = config.require('django-secret-key');

    final awsRegion = pulumi.output(
      aws.index.getRegion(aws.index.GetRegionArgs()),
    ).apply((region) => region.name);

    final appCluster = aws.ecs.Cluster('app-cluster');

    final appVpc = aws.ec2.Vpc(
      'app-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '172.31.0.0/16'.input(),
        enableDnsHostnames: true.input(),
      ),
    );

    final appVpcSubnet = aws.ec2.Subnet(
      'app-vpc-subnet',
      args: aws.ec2.SubnetArgs(
        cidrBlock: '172.31.0.0/20'.input(),
        availabilityZone: awsRegion.apply((region) => '${region}a'),
        vpcId: appVpc.id,
      ),
    );

    final appGateway = aws.ec2.InternetGateway(
      'app-gateway',
      args: aws.ec2.InternetGatewayArgs(vpcId: appVpc.id),
    );

    final appRoutetable = aws.ec2.RouteTable(
      'app-routetable',
      args: aws.ec2.RouteTableArgs(
        vpcId: appVpc.id,
        routes: [
          aws.ec2.RouteTableRoute(
            cidrBlock: '0.0.0.0/0'.input(),
            gatewayId: appGateway.id,
          ),
        ].input(),
      ),
    );

    aws.ec2.MainRouteTableAssociation(
      'app_routetable_association',
      args: aws.ec2.MainRouteTableAssociationArgs(
        routeTableId: appRoutetable.id,
        vpcId: appVpc.id,
      ),
    );

    final appSecurityGroup = aws.ec2.SecurityGroup(
      'security-group',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: appVpc.id,
        description: 'Enables HTTP access'.input(),
        ingress: [
          aws.ec2.SecurityGroupIngressArgs(
            protocol: 'tcp'.input(),
            fromPort: 0.input(),
            toPort: 65535.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgressArgs(
            protocol: '-1'.input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    final appExecRole = aws.iam.Role(
      'app-exec-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Principal': {'Service': 'ecs-tasks.amazonaws.com'},
              'Effect': 'Allow',
              'Sid': '',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'app-exec-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: appExecRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy'
                .input(),
      ),
    );

    final appTaskRole = aws.iam.Role(
      'app-task-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Principal': {'Service': 'ecs-tasks.amazonaws.com'},
              'Effect': 'Allow',
              'Sid': '',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'app-access-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: appTaskRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AmazonECS_FullAccess'.input(),
      ),
    );

    final appEcrRepo = aws.ecr.Repository(
      'app-ecr-repo',
      args: aws.ecr.RepositoryArgs(imageTagMutability: 'MUTABLE'.input()),
    );

    aws.ecr.LifecyclePolicy(
      'app-lifecycle-policy',
      args: aws.ecr.LifecyclePolicyArgs(
        repository: appEcrRepo.name,
        policy: jsonEncode({
          'rules': [
            {
              'rulePriority': 10,
              'description': 'Remove untagged images',
              'selection': {
                'tagStatus': 'untagged',
                'countType': 'imageCountMoreThan',
                'countNumber': 1,
              },
              'action': {'type': 'expire'},
            },
          ],
        }).input(),
      ),
    );

    final extraRdsSubnet = aws.ec2.Subnet(
      'extra-rds-subnet',
      args: aws.ec2.SubnetArgs(
        cidrBlock: '172.31.128.0/20'.input(),
        availabilityZone: awsRegion.apply((region) => '${region}b'),
        vpcId: appVpc.id,
      ),
    );

    final appDatabaseSubnetgroup = aws.rds.SubnetGroup(
      'app-database-subnetgroup',
      args: aws.rds.SubnetGroupArgs(
        subnetIds: pulumi.Output
            .all([appVpcSubnet.id, extraRdsSubnet.id])
            .apply<List<String>>((ids) => ids.cast<String>())
            .input(),
      ),
    );

    final mysqlRdsServer = aws.rds.Instance(
      'mysql-server',
      args: aws.rds.InstanceArgs(
        engine: 'mysql'.input(),
        username: sqlAdminName.input(),
        password: sqlAdminPassword.input(),
        instanceClass: 'db.t3.micro'.input(),
        allocatedStorage: 20.input(),
        skipFinalSnapshot: true.input(),
        publiclyAccessible: true.input(),
        dbSubnetGroupName: appDatabaseSubnetgroup.id,
        vpcSecurityGroupIds: pulumi.Output
            .all([appSecurityGroup.id])
            .apply<List<String>>((ids) => ids.cast<String>())
            .input(),
      ),
    );

    final mysqlProvider = mysqlproviders.ProviderProvider(
      'mysql-provider',
      args: mysqlproviders.ProviderArgs(
        endpoint: mysqlRdsServer.endpoint,
        username: sqlAdminName.input(),
        password: sqlAdminPassword.input(),
      ),
    );

    final mysqlDatabase = mysql.Database(
      'mysql-database',
      args: mysql.DatabaseArgs(name: 'votes'.input()),
      options: pulumi.CustomResourceOptions(provider: mysqlProvider),
    );

    final mysqlUser = mysql.User(
      'mysql-standard-user',
      args: mysql.UserArgs(
        user: sqlUserName.input(),
        host: '%'.input(),
        plaintextPassword: sqlUserPassword.input(),
      ),
      options: pulumi.CustomResourceOptions(provider: mysqlProvider),
    );

    mysql.Grant(
      'mysql-access-grant',
      args: mysql.GrantArgs(
        user: mysqlUser.user,
        host: mysqlUser.host.apply<String>((host) => host!).input(),
        database: mysqlDatabase.name,
        privileges: ['SELECT', 'UPDATE', 'INSERT', 'DELETE'].input(),
      ),
      options: pulumi.CustomResourceOptions(provider: mysqlProvider),
    );

    final djangoTargetgroup = aws.lb.TargetGroup(
      'django-targetgroup',
      args: aws.lb.TargetGroupArgs(
        port: 80.input(),
        protocol: 'TCP'.input(),
        targetType: 'ip'.input(),
        stickiness: aws.lb.TargetGroupStickiness(
          enabled: false.input(),
          type: 'lb_cookie'.input(),
        ).input(),
        vpcId: appVpc.id,
      ),
    );

    final djangoBalancer = aws.lb.LoadBalancer(
      'django-balancer',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'network'.input(),
        internal: false.input(),
        securityGroups: <String>[].input(),
        subnets: pulumi.Output
            .all([appVpcSubnet.id])
            .apply<List<String>>((ids) => ids.cast<String>())
            .input(),
      ),
    );

    final djangoListener = aws.lb.Listener(
      'django-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: djangoBalancer.arn,
        port: 80.input(),
        protocol: 'TCP'.input(),
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward'.input(),
            targetGroupArn: djangoTargetgroup.arn.input(),
          ),
        ].input(),
      ),
    );

    final repoCreds = appEcrRepo.registryId.apply(
      (rid) => aws.ecr.getAuthorizationToken(
        aws.ecr.GetAuthorizationTokenArgs(registryId: rid.input()),
      ),
    );

    final appRegistry = repoCreds.apply<docker.Registry>(
      (creds) => docker.Registry(
        server: creds.proxyEndpoint.input(),
        username: creds.userName.input(),
        password: creds.password.input(),
      ),
    );

    final djangoImage = docker.Image(
      'django-dockerimage',
      args: docker.ImageArgs(
        imageName: appEcrRepo.repositoryUrl,
        build: docker.DockerBuild(context: './frontend'.input()).input(),
        skipPush: false.input(),
        registry: appRegistry.input(),
      ),
    );

    final djangoLogGroup = aws.cloudwatch.LogGroup(
      'django-log-group',
      args: aws.cloudwatch.LogGroupArgs(
        retentionInDays: 1.input(),
        name: 'django-log-group'.input(),
      ),
    );

    final djangoDatabaseTaskDefinition = aws.ecs.TaskDefinition(
      'django-database-task-definition',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'django_database_task_definition-family'.input(),
        cpu: '256'.input(),
        memory: '512'.input(),
        networkMode: 'awsvpc'.input(),
        requiresCompatibilities: ['FARGATE'].input(),
        executionRoleArn: appExecRole.arn.input(),
        taskRoleArn: appTaskRole.arn.input(),
        containerDefinitions: pulumi
            .Output
            .all([
              djangoImage.imageName,
              mysqlDatabase.name,
              mysqlRdsServer.address,
              mysqlRdsServer.port,
              awsRegion,
              djangoLogGroup.name,
            ])
            .apply<String>((values) {
              final imageName = values[0] as String;
              final dbName = values[1] as String;
              final dbAddress = values[2] as String;
              final dbPort = values[3].toString();
              final region = values[4] as String;
              final logGroupName = values[5] as String;
              return jsonEncode([
                {
                  'name': 'django-container',
                  'image': imageName,
                  'memory': 512,
                  'essential': true,
                  'portMappings': [
                    {'containerPort': 80, 'hostPort': 80, 'protocol': 'tcp'},
                  ],
                  'environment': [
                    {'name': 'SECRET_KEY', 'value': djangoSecretKey},
                    {'name': 'DATABASE_NAME', 'value': dbName},
                    {'name': 'USER_NAME', 'value': sqlAdminName},
                    {'name': 'USER_PASSWORD', 'value': sqlAdminPassword},
                    {'name': 'DJANGO_NAME', 'value': djangoAdminName},
                    {'name': 'DJANGO_PASSWORD', 'value': djangoAdminPassword},
                    {'name': 'DATABASE_ADDRESS', 'value': dbAddress},
                    {'name': 'DATABASE_PORT', 'value': dbPort},
                  ],
                  'logConfiguration': {
                    'logDriver': 'awslogs',
                    'options': {
                      'awslogs-group': logGroupName,
                      'awslogs-region': region,
                      'awslogs-stream-prefix': 'djangoApp-database',
                    },
                  },
                  'command': ['/mysite/setupDatabase.sh'],
                },
              ]);
            })
            .input(),
      ),
    );

    aws.ecs.Service(
      'django-database-service',
      args: aws.ecs.ServiceArgs(
        cluster: appCluster.arn,
        desiredCount: 1.input(),
        launchType: 'FARGATE'.input(),
        taskDefinition: djangoDatabaseTaskDefinition.arn.input(),
        waitForSteadyState: false.input(),
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          assignPublicIp: true.input(),
          subnets: pulumi.Output
              .all([appVpcSubnet.id])
              .apply<List<String>>((ids) => ids.cast<String>())
              .input(),
          securityGroups: pulumi.Output
              .all([appSecurityGroup.id])
              .apply<List<String>>((ids) => ids.cast<String>())
              .input(),
        ).input(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: djangoTargetgroup.arn,
            containerName: 'django-container'.input(),
            containerPort: 80.input(),
          ),
        ].input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [djangoListener]),
    );

    final djangoSiteTaskDefinition = aws.ecs.TaskDefinition(
      'django-site-task-definition',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'django-site-task-definition-family'.input(),
        cpu: '256'.input(),
        memory: '512'.input(),
        networkMode: 'awsvpc'.input(),
        requiresCompatibilities: ['FARGATE'].input(),
        executionRoleArn: appExecRole.arn.input(),
        taskRoleArn: appTaskRole.arn.input(),
        containerDefinitions: pulumi
            .Output
            .all([
              djangoImage.imageName,
              mysqlDatabase.name,
              mysqlRdsServer.address,
              mysqlRdsServer.port,
              awsRegion,
              djangoLogGroup.name,
            ])
            .apply<String>((values) {
              final imageName = values[0] as String;
              final dbName = values[1] as String;
              final dbAddress = values[2] as String;
              final dbPort = values[3].toString();
              final region = values[4] as String;
              final logGroupName = values[5] as String;
              return jsonEncode([
                {
                  'name': 'django-container',
                  'image': imageName,
                  'memory': 512,
                  'essential': true,
                  'portMappings': [
                    {'containerPort': 80, 'hostPort': 80, 'protocol': 'tcp'},
                  ],
                  'environment': [
                    {'name': 'SECRET_KEY', 'value': djangoSecretKey},
                    {'name': 'DATABASE_NAME', 'value': dbName},
                    {'name': 'USER_NAME', 'value': sqlUserName},
                    {'name': 'USER_PASSWORD', 'value': sqlUserPassword},
                    {'name': 'DATABASE_ADDRESS', 'value': dbAddress},
                    {'name': 'DATABASE_PORT', 'value': dbPort},
                  ],
                  'logConfiguration': {
                    'logDriver': 'awslogs',
                    'options': {
                      'awslogs-group': logGroupName,
                      'awslogs-region': region,
                      'awslogs-stream-prefix': 'djangoApp-site',
                    },
                  },
                },
              ]);
            })
            .input(),
      ),
    );

    aws.ecs.Service(
      'django-site-service',
      args: aws.ecs.ServiceArgs(
        cluster: appCluster.arn,
        desiredCount: 1.input(),
        launchType: 'FARGATE'.input(),
        taskDefinition: djangoSiteTaskDefinition.arn.input(),
        waitForSteadyState: false.input(),
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          assignPublicIp: true.input(),
          subnets: pulumi.Output
              .all([appVpcSubnet.id])
              .apply<List<String>>((ids) => ids.cast<String>())
              .input(),
          securityGroups: pulumi.Output
              .all([appSecurityGroup.id])
              .apply<List<String>>((ids) => ids.cast<String>())
              .input(),
        ).input(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: djangoTargetgroup.arn,
            containerName: 'django-container'.input(),
            containerPort: 80.input(),
          ),
        ].input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [djangoListener]),
    );

    appUrl = djangoBalancer.dnsName;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('app-url', appUrl)];
  }
}
