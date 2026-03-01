import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> loadBalancerUrl;
  late final pulumi.Output<Map<String, String>> ecsClusterTags;

  ExampleStack() {
    final config = pulumi.Config();
    final stackPath = config.require('mystackpath');
    final crosswalkVpc = pulumi.StackReference(stackPath);

    final vpcName = crosswalkVpc
        .requireOutput(pulumi.Input.fromValue('pulumi_vpc_name'))
        .apply<String>((value) => value as String);
    final vpcCidr = crosswalkVpc
        .requireOutput(pulumi.Input.fromValue('pulumi_vpc_cidr'))
        .apply<String>((value) => value as String);
    final vpcId = crosswalkVpc
        .requireOutput(pulumi.Input.fromValue('pulumi_vpc_id'))
        .apply<String>((value) => value as String);
    final publicSubnets = crosswalkVpc
        .requireOutput(pulumi.Input.fromValue('pulumi_vpc_public_subnet_ids'))
        .apply<List<String>>((value) => (value as List).cast<String>());
    final azAmount = crosswalkVpc
        .requireOutput(pulumi.Input.fromValue('pulumi_vpc_az_zones'))
        .apply<int>((value) => (value as num).toInt());

    final baseTags = pulumi.Output
        .all<dynamic>([vpcName, vpcCidr])
        .apply<Map<String, String>>(
          (values) => <String, String>{
            'application': 'fargate',
            'crosswalk-vpc': 'yes',
            'demo': 'yes',
            'costcenter': '1234',
            'env': 'dev',
            'vpc_name': values[0] as String,
            'vpc_cidr': values[1] as String,
            'pulumi:project': pulumi.Deployment.instance.projectName,
            'pulumi:stack': pulumi.Deployment.instance.stackName,
          },
        );

    pulumi.Output<Map<String, String>> withName(String name) {
      return baseTags.apply<Map<String, String>>((tags) {
        final next = Map<String, String>.from(tags);
        next['Name'] = name;
        return next;
      });
    }

    final taskExecutionRole = aws.iam.Role(
      'pulumi-fargate-task-execution-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Sid': '',
              'Effect': 'Allow',
              'Principal': {'Service': 'ecs-tasks.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'pulumi-fargate-task-excution-policy-attach',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: taskExecutionRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy',
      ),
    );

    final sgroup = aws.ec2.SecurityGroup(
      'pulumi-fargate-sg',
      args: aws.ec2.SecurityGroupArgs(
        description: 'Enable HTTP access',
        vpcId: vpcId,
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp',
            fromPort: 80,
            toPort: 80,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1',
            fromPort: 0,
            toPort: 0,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
        tags: withName('pulumi-fargate-security-group'),
      ),
    );

    final clusterTags = withName('pulumi-fargate-ecs-cluster');

    final cluster = aws.ecs.Cluster(
      'pulumi-app-cluster',
      args: aws.ecs.ClusterArgs(tags: clusterTags),
    );

    final albSecurityGroups = pulumi.Output
        .all<String>([sgroup.id])
        .apply<List<String>>((ids) => ids);

    final alb = aws.lb.LoadBalancer(
      'pulumi-fargate-alb',
      args: aws.lb.LoadBalancerArgs(
        subnets: publicSubnets,
        securityGroups: albSecurityGroups,
        tags: withName('pulumi-fargate-alb'),
      ),
    );

    final albTargetGroup = aws.lb.TargetGroup(
      'pulumi-fargate-alb-tg',
      args: aws.lb.TargetGroupArgs(
        port: 80,
        protocol: 'HTTP',
        targetType: 'ip',
        vpcId: vpcId,
      ),
    );

    final frontEndListener = aws.lb.Listener(
      'pulumi-fargate-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: alb.arn,
        port: 80,
        protocol: 'HTTP',
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward',
            targetGroupArn: albTargetGroup.arn,
          ),
        ],
      ),
    );

    final taskDefinition = aws.ecs.TaskDefinition(
      'pulumi-fargate-task-definition',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'fargate-task-definition',
        cpu: '256',
        memory: '512',
        networkMode: 'awsvpc',
        requiresCompatibilities: ['FARGATE'],
        executionRoleArn: taskExecutionRole.arn,
        tags: withName('pulumi-fargate-task-definition'),
        containerDefinitions: jsonEncode([
          {
            'name': 'pulumi-myfargate-app',
            'image': 'nginx',
            'portMappings': [
              {'containerPort': 80, 'hostPort': 80, 'protocol': 'tcp'},
            ],
          },
        ]),
      ),
    );

    final serviceSecurityGroups = pulumi.Output
        .all<String>([sgroup.id])
        .apply<List<String>>((ids) => ids);

    aws.ecs.Service(
      'pulumi-fargate-service',
      args: aws.ecs.ServiceArgs(
        cluster: cluster.arn,
        desiredCount: azAmount,
        launchType: 'FARGATE',
        taskDefinition: taskDefinition.arn,
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          assignPublicIp: true,
          subnets: publicSubnets,
          securityGroups: serviceSecurityGroups,
        ),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: albTargetGroup.arn,
            containerName: 'pulumi-myfargate-app',
            containerPort: 80,
          ),
        ],
        tags: withName('pulumi-fargate-service'),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [frontEndListener]),
    );

    loadBalancerUrl = alb.dnsName;
    ecsClusterTags = clusterTags;

  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('Load Balancer URL', loadBalancerUrl),
      pulumi.OutputProperty('ECS Cluster Tags', ecsClusterTags),
    ];
  }
}
