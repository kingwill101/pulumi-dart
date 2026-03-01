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

    final project = pulumi.getProject();
    final stack = pulumi.getStack();

    final vpc = aws.ec2.Vpc(
      'langserve-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: vpcCidr.output(),
        enableDnsHostnames: true.output(),
        enableDnsSupport: true.output(),
        tags: {'Name': '$project-$stack'}.output(),
      ),
    );

    final routeTable = aws.ec2.RouteTable(
      'langserve-rt',
      args: aws.ec2.RouteTableArgs(
        vpcId: vpc.id,
        tags: {'Name': '$project-$stack'}.output(),
      ),
    );

    final igw = aws.ec2.InternetGateway(
      'langserve-igw',
      args: aws.ec2.InternetGatewayArgs(
        vpcId: vpc.id,
        tags: {'Name': '$project-$stack'}.output(),
      ),
    );

    aws.ec2.Route(
      'langserve-route',
      args: aws.ec2.RouteArgs(
        routeTableId: routeTable.id,
        destinationCidrBlock: '0.0.0.0/0'.output(),
        gatewayId: igw.id,
      ),
    );

    final region = aws.getRegionOutput();

    final subnet1 = aws.ec2.Subnet(
      'langserve-subnet1',
      args: aws.ec2.SubnetArgs(
        vpcId: vpc.id,
        cidrBlock: subnet1Cidr.output(),
        availabilityZone: region.apply((r) => '${r?.name ?? ''}a'),
        mapPublicIpOnLaunch: true.output(),
        tags: {'Name': '$project-$stack-1'}.output(),
      ),
    );

    final subnet2 = aws.ec2.Subnet(
      'langserve-subnet2',
      args: aws.ec2.SubnetArgs(
        vpcId: vpc.id,
        cidrBlock: subnet2Cidr.output(),
        availabilityZone: region.apply((r) => '${r?.name ?? ''}b'),
        mapPublicIpOnLaunch: true.output(),
        tags: {'Name': '$project-$stack-2'}.output(),
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
            protocol: 'tcp'.output(),
            fromPort: 80.output(),
            toPort: 80.output(),
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1'.output(),
            fromPort: 0.output(),
            toPort: 0.output(),
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
      ),
    );

    final lb = aws.lb.LoadBalancer(
      'langserve-load-balancer',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'application'.output(),
        securityGroups: [securityGroup.id].output(),
        subnets: [subnet1.id, subnet2.id].output(),
      ),
    );

    final tg = aws.lb.TargetGroup(
      'langserve-target-group',
      args: aws.lb.TargetGroupArgs(
        port: 80.output(),
        protocol: 'HTTP'.output(),
        targetType: 'ip'.output(),
        vpcId: vpc.id,
      ),
    );

    aws.lb.Listener(
      'langserve-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: lb.arn,
        port: 80.output(),
        protocol: 'HTTP'.output(),
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward'.output(),
            targetGroupArn: tg.arn,
          ),
        ].output(),
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
        }).output(),
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
        }).output(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'langserve-task-exec-role-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: taskExecRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy'
                .output(),
      ),
    );

    final taskDef = aws.ecs.TaskDefinition(
      'langserve-task-definition',
      args: aws.ecs.TaskDefinitionArgs(
        family: '$project-$stack'.output(),
        cpu: '256'.output(),
        memory: '512'.output(),
        networkMode: 'awsvpc'.output(),
        requiresCompatibilities: ['FARGATE'].output(),
        executionRoleArn: taskExecRole.arn,
        taskRoleArn: taskRole.arn,
        containerDefinitions: image.imageUri.apply((uri) {
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
        }),
      ),
    );

    aws.ecs.Service(
      'langserve-service',
      args: aws.ecs.ServiceArgs(
        cluster: cluster.arn,
        desiredCount: 1.output(),
        launchType: 'FARGATE'.output(),
        taskDefinition: taskDef.arn,
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          assignPublicIp: true.output(),
          subnets: [subnet1.id, subnet2.id].output(),
          securityGroups: [securityGroup.id].output(),
        ).input(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: tg.arn,
            containerName: 'langserve-app'.output(),
            containerPort: 80.output(),
          ),
        ].output(),
      ),
    );

    url = lb.dnsName.apply((dns) => 'http://${dns ?? ''}');
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
