import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_docker/pulumi_docker.dart' as docker;
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

    final awsRegion = pulumi.Output(
      aws.getRegion(aws.GetRegionArgs()),
    ).apply((region) => region.name);

    final appCluster = aws.ecs.Cluster('app-cluster');

    final appVpc = aws.ec2.Vpc(
      'app-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '172.31.0.0/16',
        enableDnsHostnames: true,
      ),
    );

    final appVpcSubnet = aws.ec2.Subnet(
      'app-vpc-subnet',
      args: aws.ec2.SubnetArgs(
        cidrBlock: '172.31.0.0/20',
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
          aws.ec2.RouteTableRoute(cidrBlock: '0.0.0.0/0', gatewayId: appGateway.id),
        ].output(),
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
        description: 'Enables HTTP access',
        ingress: [
          aws.ec2.SecurityGroupIngressArgs(
            protocol: 'tcp',
            fromPort: 0,
            toPort: 65535,
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
        egress: [
          aws.ec2.SecurityGroupEgressArgs(
            protocol: '-1',
            fromPort: 0,
            toPort: 0,
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
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
        }),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'app-exec-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: appExecRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy',
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
        }),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'app-access-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: appTaskRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AmazonECS_FullAccess',
      ),
    );

    final appEcrRepo = aws.ecr.Repository(
      'app-ecr-repo',
      args: aws.ecr.RepositoryArgs(imageTagMutability: 'MUTABLE'),
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
        }),
      ),
    );

    final extraRdsSubnet = aws.ec2.Subnet(
      'extra-rds-subnet',
      args: aws.ec2.SubnetArgs(
        cidrBlock: '172.31.128.0/20',
        availabilityZone: awsRegion.apply((region) => '${region}b'),
        vpcId: appVpc.id,
      ),
    );

    final appDatabaseSubnetgroup = aws.rds.SubnetGroup(
      'app-database-subnetgroup',
      args: aws.rds.SubnetGroupArgs(
        subnetIds: [appVpcSubnet.id, extraRdsSubnet.id].output(),
      ),
    );

    final mysqlRdsServer = aws.rds.Instance(
      'mysql-server',
      args: aws.rds.InstanceArgs(
        engine: 'mysql',
        username: sqlAdminName,
        password: sqlAdminPassword,
        instanceClass: 'db.t3.micro',
        allocatedStorage: 20,
        skipFinalSnapshot: true,
        publiclyAccessible: true,
        dbSubnetGroupName: appDatabaseSubnetgroup.id,
        vpcSecurityGroupIds: [appSecurityGroup.id].output(),
      ),
    );

    final mysqlProvider = mysqlproviders.ProviderProvider(
      'mysql-provider',
      args: mysqlproviders.ProviderArgs(
        endpoint: mysqlRdsServer.endpoint,
        username: sqlAdminName.output(),
        password: sqlAdminPassword.output(),
      ),
    );

    final mysqlDatabase = mysql.Database(
      'mysql-database',
      args: mysql.DatabaseArgs(name: 'votes'.output()),
      options: pulumi.CustomResourceOptions(provider: mysqlProvider),
    );

    final mysqlUser = mysql.User(
      'mysql-standard-user',
      args: mysql.UserArgs(
        user: sqlUserName.output(),
        host: '%'.output(),
        plaintextPassword: sqlUserPassword.output(),
      ),
      options: pulumi.CustomResourceOptions(provider: mysqlProvider),
    );

    mysql.Grant(
      'mysql-access-grant',
      args: mysql.GrantArgs(
        user: mysqlUser.user,
        host: mysqlUser.host,
        database: mysqlDatabase.name,
        privileges: ['SELECT', 'UPDATE', 'INSERT', 'DELETE'].output(),
      ),
      options: pulumi.CustomResourceOptions(provider: mysqlProvider),
    );

    final djangoTargetgroup = aws.lb.TargetGroup(
      'django-targetgroup',
      args: aws.lb.TargetGroupArgs(
        port: 80,
        protocol: 'TCP',
        targetType: 'ip',
        stickiness: aws.lb.TargetGroupStickiness(enabled: false, type: 'lb_cookie'),
        vpcId: appVpc.id,
      ),
    );

    final djangoBalancer = aws.lb.LoadBalancer(
      'django-balancer',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'network',
        internal: false,
        securityGroups: <String>[].output(),
        subnets: [appVpcSubnet.id].output(),
      ),
    );

    final djangoListener = aws.lb.Listener(
      'django-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: djangoBalancer.arn,
        port: 80,
        protocol: 'TCP',
        defaultActions: [
          aws.lb.ListenerDefaultAction(type: 'forward', targetGroupArn: djangoTargetgroup.arn),
        ].output(),
      ),
    );

    final repoCreds = appEcrRepo.registryId.apply(
      (rid) => aws.ecr.getAuthorizationToken(
        aws.ecr.GetAuthorizationTokenArgs(registryId: rid),
      ),
    );

    final appRegistry = repoCreds.apply(
      (creds) => docker.Registry(
        server: creds.proxyEndpoint,
        username: creds.userName,
        password: creds.password,
      ),
    );

    final djangoImage = docker.Image(
      'django-dockerimage',
      args: docker.ImageArgs(
        imageName: appEcrRepo.repositoryUrl,
        build: docker.DockerBuild(context: './frontend').output(),
        skipPush: false.output(),
        registry: appRegistry,
      ),
    );

    final djangoLogGroup = aws.cloudwatch.LogGroup(
      'django-log-group',
      args: aws.cloudwatch.LogGroupArgs(
        retentionInDays: 1,
        name: 'django-log-group',
      ),
    );

    final djangoDatabaseTaskDefinition = aws.ecs.TaskDefinition(
      'django-database-task-definition',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'django_database_task_definition-family',
        cpu: '256',
        memory: '512',
        networkMode: 'awsvpc',
        requiresCompatibilities: ['FARGATE'].output(),
        executionRoleArn: appExecRole.arn,
        taskRoleArn: appTaskRole.arn,
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
            .apply((values) {
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
            }),
      ),
    );

    aws.ecs.Service(
      'django-database-service',
      args: aws.ecs.ServiceArgs(
        cluster: appCluster.arn,
        desiredCount: 1,
        launchType: 'FARGATE',
        taskDefinition: djangoDatabaseTaskDefinition.arn,
        waitForSteadyState: false,
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          assignPublicIp: true,
          subnets: [appVpcSubnet.id].output(),
          securityGroups: [appSecurityGroup.id].output(),
        ),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: djangoTargetgroup.arn,
            containerName: 'django-container',
            containerPort: 80,
          ),
        ].output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [djangoListener]),
    );

    final djangoSiteTaskDefinition = aws.ecs.TaskDefinition(
      'django-site-task-definition',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'django-site-task-definition-family',
        cpu: '256',
        memory: '512',
        networkMode: 'awsvpc',
        requiresCompatibilities: ['FARGATE'].output(),
        executionRoleArn: appExecRole.arn,
        taskRoleArn: appTaskRole.arn,
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
            .apply((values) {
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
            }),
      ),
    );

    aws.ecs.Service(
      'django-site-service',
      args: aws.ecs.ServiceArgs(
        cluster: appCluster.arn,
        desiredCount: 1,
        launchType: 'FARGATE',
        taskDefinition: djangoSiteTaskDefinition.arn,
        waitForSteadyState: false,
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          assignPublicIp: true,
          subnets: [appVpcSubnet.id].output(),
          securityGroups: [appSecurityGroup.id].output(),
        ),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: djangoTargetgroup.arn,
            containerName: 'django-container',
            containerPort: 80,
          ),
        ].output(),
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

