import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class LangserveStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  LangserveStack() {
    final config = pulumi.Config();
    final vpcCidr = config.get('vpc-cidr') ?? '10.0.0.0/16';
    final subnet1Cidr = config.get('subnet-1-cidr') ?? '10.0.0.0/24';
    final subnet2Cidr = config.get('subnet-2-cidr') ?? '10.0.1.0/24';
    final containerContext = config.get('container-context') ?? '.';
    final openApiKey = config.get('open-api-key') ?? 'CHANGEME';

    final project = pulumi.Deployment.instance.projectName;
    final stack = pulumi.Deployment.instance.stackName;

    final vpc = aws.ec2.Vpc(
      'langserve-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: vpcCidr.input(),
        enableDnsHostnames: true.input(),
        enableDnsSupport: true.input(),
        tags: {'Name': '$project-$stack'}.input(),
      ),
    );

    final routeTable = aws.ec2.RouteTable(
      'langserve-rt',
      args: aws.ec2.RouteTableArgs(
        vpcId: vpc.id,
        tags: {'Name': '$project-$stack'}.input(),
      ),
    );

    final igw = aws.ec2.InternetGateway(
      'langserve-igw',
      args: aws.ec2.InternetGatewayArgs(
        vpcId: vpc.id,
        tags: {'Name': '$project-$stack'}.input(),
      ),
    );

    aws.ec2.Route(
      'langserve-route',
      args: aws.ec2.RouteArgs(
        routeTableId: routeTable.id,
        destinationCidrBlock: '0.0.0.0/0'.input(),
        gatewayId: igw.id,
      ),
    );

    final region = pulumi.output(aws.index.getRegion(aws.index.GetRegionArgs()));

    final subnet1 = aws.ec2.Subnet(
      'langserve-subnet1',
      args: aws.ec2.SubnetArgs(
        vpcId: vpc.id,
        cidrBlock: subnet1Cidr.input(),
        availabilityZone: region.apply((r) => '${r.name}a'),
        mapPublicIpOnLaunch: true.input(),
        tags: {'Name': '$project-$stack-1'}.input(),
      ),
    );

    final subnet2 = aws.ec2.Subnet(
      'langserve-subnet2',
      args: aws.ec2.SubnetArgs(
        vpcId: vpc.id,
        cidrBlock: subnet2Cidr.input(),
        availabilityZone: region.apply((r) => '${r.name}b'),
        mapPublicIpOnLaunch: true.input(),
        tags: {'Name': '$project-$stack-2'}.input(),
      ),
    );

    aws.ec2.RouteTableAssociation(
      'langserve-subnet1-rt-assoc',
      args: aws.ec2.RouteTableAssociationArgs(
        subnetId: subnet1.id,
        routeTableId: routeTable.id,
      ),
    );

    aws.ec2.RouteTableAssociation(
      'langserve-subnet2-rt-assoc',
      args: aws.ec2.RouteTableAssociationArgs(
        subnetId: subnet2.id,
        routeTableId: routeTable.id,
      ),
    );

    final repo = awsx.ecr.Repository(
      'langserve-repo',
      args: awsx.ecr.RepositoryArgs(forceDelete: true.input()),
    );

    final image = awsx.ecr.Image(
      'langserve-image',
      args: awsx.ecr.ImageArgs(
        repositoryUrl: repo.url,
        context: containerContext.input(),
        platform: 'linux/amd64'.input(),
      ),
    );

    final cluster = aws.ecs.Cluster('langserve-ecs-cluster');

    final securityGroup = aws.ec2.SecurityGroup(
      'langserve-security-group',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: vpc.id,
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 80.input(),
            toPort: 80.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1'.input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    final lb = aws.lb.LoadBalancer(
      'langserve-load-balancer',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'application'.input(),
        securityGroups: pulumi
            .Output
            .all([securityGroup.id])
            .apply<List<String>>((values) => values.cast<String>())
            .input(),
        subnets: pulumi
            .Output
            .all([subnet1.id, subnet2.id])
            .apply<List<String>>((values) => values.cast<String>())
            .input(),
      ),
    );

    final tg = aws.lb.TargetGroup(
      'langserve-target-group',
      args: aws.lb.TargetGroupArgs(
        port: 80.input(),
        protocol: 'HTTP'.input(),
        targetType: 'ip'.input(),
        vpcId: vpc.id,
      ),
    );

    aws.lb.Listener(
      'langserve-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: lb.arn,
        port: 80.input(),
        protocol: 'HTTP'.input(),
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward'.input(),
            targetGroupArn: tg.arn,
          ),
        ].input(),
      ),
    );

    final taskRole = aws.iam.Role(
      'langserve-task-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'ecs-tasks.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }).input(),
      ),
    );

    final taskExecRole = aws.iam.Role(
      'langserve-task-exec-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'ecs-tasks.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'langserve-task-exec-role-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: taskExecRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy'
                .input(),
      ),
    );

    final taskDef = aws.ecs.TaskDefinition(
      'langserve-task-definition',
      args: aws.ecs.TaskDefinitionArgs(
        family: '$project-$stack'.input(),
        cpu: '256'.input(),
        memory: '512'.input(),
        networkMode: 'awsvpc'.input(),
        requiresCompatibilities: ['FARGATE'].input(),
        executionRoleArn: taskExecRole.arn,
        taskRoleArn: taskRole.arn,
        containerDefinitions: image.imageUri.apply<String>((uri) {
          return jsonEncode([
            {
              'name': 'langserve-app',
              'image': uri,
              'essential': true,
              'portMappings': [
                {'containerPort': 80, 'hostPort': 80, 'protocol': 'tcp'},
              ],
              'environment': [
                {'name': 'OPENAI_API_KEY', 'value': openApiKey},
              ],
            },
          ]);
        }).input(),
      ),
    );

    aws.ecs.Service(
      'langserve-service',
      args: aws.ecs.ServiceArgs(
        cluster: cluster.arn,
        desiredCount: 1.input(),
        launchType: 'FARGATE'.input(),
        taskDefinition: taskDef.arn,
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          assignPublicIp: true.input(),
          subnets: pulumi
              .Output
              .all([subnet1.id, subnet2.id])
              .apply<List<String>>((values) => values.cast<String>())
              .input(),
          securityGroups: pulumi
              .Output
              .all([securityGroup.id])
              .apply<List<String>>((values) => values.cast<String>())
              .input(),
        ).input(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: tg.arn,
            containerName: 'langserve-app'.input(),
            containerPort: 80.input(),
          ),
        ].input(),
      ),
    );

    url = lb.dnsName.apply((dns) => 'http://$dns');
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
