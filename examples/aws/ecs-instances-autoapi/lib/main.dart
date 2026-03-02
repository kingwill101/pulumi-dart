import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class EcsInstancesAutoApiStack extends pulumi.Stack {
  late final pulumi.Output<String> appUrl;
  late final pulumi.Output<String> note;

  EcsInstancesAutoApiStack() {
    final cfg = pulumi.Config('cfg');
    final asgSize = cfg.requireNumber('autoscalingGroupSize').toInt();

    final defaultVpc = pulumi.output(
      aws.ec2.getVpc(aws.ec2.GetVpcArgs(default_: true.input())),
    );
    final defaultVpcId = defaultVpc.apply<String>(
      (vpc) => (vpc as dynamic).id as String,
    );

    final defaultVpcSubnets = pulumi.output(
      aws.ec2.getSubnets(
        aws.ec2.GetSubnetsArgs(
          filters: [
            aws.ec2.GetSubnetsFilter(
              name: 'vpc-id'.input(),
              values: defaultVpcId.apply<List<String>>((vpcId) => [vpcId]),
            ),
          ].input(),
        ),
      ),
    );
    final defaultSubnetIds = defaultVpcSubnets.apply<List<String>>(
      (subnets) => ((subnets as dynamic).ids as List).cast<String>(),
    );

    final sg = aws.ec2.SecurityGroup(
      'nginx-sg',
      args: aws.ec2.SecurityGroupArgs(
        description: 'Allow HTTP'.input(),
        vpcId: defaultVpcId,
        ingress: [
          aws.ec2.SecurityGroupIngressArgs(
            protocol: 'tcp'.input(),
            fromPort: 80.input(),
            toPort: 80.input(),
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

    final taskExecutionRole = aws.iam.Role(
      'task-execution-role',
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
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'task-execution-policy-attach',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: taskExecutionRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy'
                .input(),
      ),
    );

    final ecsInstanceRole = aws.iam.Role(
      'ecs-instance-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Sid': '',
              'Effect': 'Allow',
              'Principal': {'Service': 'ec2.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'ecs-instance-policy-attach',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: ecsInstanceRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role'
                .input(),
      ),
    );

    final ecsInstanceProfile = aws.iam.InstanceProfile(
      'ecs-iam-instance-profile',
      args: aws.iam.InstanceProfileArgs(role: ecsInstanceRole.name),
    );

    final ecsInstanceAmi = pulumi.output(
      aws.ec2.getAmi(
        aws.ec2.GetAmiArgs(
          mostRecent: true.input(),
          owners: ['amazon'].input(),
          filters: [
            aws.ec2.GetAmiFilter(
              name: 'name'.input(),
              values: ['amzn2-ami-ecs-hvm-*-x86_64-*'].input(),
            ),
          ].input(),
        ),
      ),
    );
    final ecsInstanceAmiId = ecsInstanceAmi.apply<String>(
      (ami) => (ami as dynamic).id as String,
    );

    const clusterName = 'my-fancy-new-ecs-cluster';
    const userData =
        '#!/bin/bash\necho ECS_CLUSTER=my-fancy-new-ecs-cluster >> /etc/ecs/ecs.config';

    final launchConfig = aws.ec2.LaunchConfiguration(
      'launch-config',
      args: aws.ec2.LaunchConfigurationArgs(
        imageId: ecsInstanceAmiId,
        instanceType: 't2.micro'.input(),
        iamInstanceProfile: ecsInstanceProfile.name,
        userData: userData.input(),
      ),
    );

    final autoScaling = aws.autoscaling.Group(
      'auto-scaling',
      args: aws.autoscaling.GroupArgs(
        launchConfiguration: launchConfig.name,
        minSize: asgSize.input(),
        maxSize: asgSize.input(),
        protectFromScaleIn: false.input(),
        vpcZoneIdentifiers: defaultSubnetIds,
      ),
    );

    aws.ecs.CapacityProvider(
      'capacity-provider',
      args: aws.ecs.CapacityProviderArgs(
        autoScalingGroupProvider: aws.ecs
            .CapacityProviderAutoScalingGroupProviderArgs(
              autoScalingGroupArn: autoScaling.arn,
              managedTerminationProtection: 'DISABLED'.input(),
              managedScaling: aws.ecs
                  .CapacityProviderAutoScalingGroupProviderManagedScalingArgs(
                    status: 'DISABLED'.input(),
                  )
                  .input(),
            )
            .input(),
      ),
    );

    final cluster = aws.ecs.Cluster(
      'cluster',
      args: aws.ecs.ClusterArgs(name: clusterName.input()),
    );

    final loadBalancer = aws.lb.LoadBalancer(
      'load-balancer',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'application'.input(),
        securityGroups: pulumi.InputList<String>([sg.id]),
        subnets: defaultSubnetIds,
        internal: false.input(),
      ),
    );

    final appTg = aws.lb.TargetGroup(
      'app-tg',
      args: aws.lb.TargetGroupArgs(
        port: 80.input(),
        protocol: 'HTTP'.input(),
        targetType: 'ip'.input(),
        vpcId: defaultVpcId,
      ),
    );

    final webListener = aws.lb.Listener(
      'web',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: loadBalancer.arn,
        port: 80.input(),
        defaultActions: [
          aws.lb.ListenerDefaultActionArgs(
            type: 'forward'.input(),
            targetGroupArn: appTg.arn,
          ),
        ].input(),
      ),
    );

    final taskDef = aws.ecs.TaskDefinition(
      'my-app',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'ec2-task-definition'.input(),
        cpu: '256'.input(),
        memory: '512'.input(),
        networkMode: 'awsvpc'.input(),
        requiresCompatibilities: ['EC2'].input(),
        executionRoleArn: taskExecutionRole.arn,
        containerDefinitions: jsonEncode([
          {
            'name': 'my-app',
            'image': 'nginx',
            'portMappings': [
              {'containerPort': 80, 'hostPort': 80, 'protocol': 'tcp'},
            ],
          },
        ]).input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [cluster]),
    );

    aws.ecs.Service(
      'my-task-runner',
      args: aws.ecs.ServiceArgs(
        cluster: cluster.arn,
        launchType: 'EC2'.input(),
        desiredCount: 1.input(),
        taskDefinition: taskDef.arn,
        networkConfiguration: aws.ecs
            .ServiceNetworkConfigurationArgs(
              assignPublicIp: false.input(),
              subnets: defaultSubnetIds,
              securityGroups: pulumi.InputList<String>([sg.id]),
            )
            .input(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancerArgs(
            targetGroupArn: appTg.arn,
            containerName: 'my-app'.input(),
            containerPort: 80.input(),
          ),
        ].input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [webListener]),
    );

    appUrl = loadBalancer.dnsName.apply<String>((dnsName) => 'http://$dnsName');
    note =
        'You may need to wait a minute for AWS to spin up the service. If the URL returns a 503, retry shortly.'
            .output();
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('appUrl', appUrl),
      pulumi.OutputProperty('note', note),
    ];
  }
}
