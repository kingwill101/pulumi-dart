import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class EcsInstancesAutoApiStack extends pulumi.Stack {
  late final pulumi.Output<String> appUrl;
  late final pulumi.Output<String> note;

  EcsInstancesAutoApiStack() {
    final cfg = pulumi.Config('cfg');
    final asgSize = cfg.requireNumber('autoscalingGroupSize').toInt();

    final defaultVpc = pulumi.Output(
      aws.ec2.getVpc(aws.ec2.GetVpcArgs(default_: true)),
    );

    final defaultVpcSubnets = pulumi.Output(
      aws.ec2.getSubnets(
        aws.ec2.GetSubnetsArgs(
          filters: [
            aws.ec2.GetSubnetsFilter(
              name: 'vpc-id',
              values: defaultVpc.apply((vpc) => [vpc.id]),
            ),
          ],
        ),
      ),
    );

    final sg = aws.ec2.SecurityGroup(
      'nginx-sg',
      args: aws.ec2.SecurityGroupArgs(
        description: 'Allow HTTP',
        vpcId: defaultVpc.apply((vpc) => vpc.id),
        ingress: [
          aws.ec2.SecurityGroupIngressArgs(
            protocol: 'tcp',
            fromPort: 80,
            toPort: 80,
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
        }),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'task-execution-policy-attach',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: taskExecutionRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy',
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
        }),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'ecs-instance-policy-attach',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: ecsInstanceRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role',
      ),
    );

    final ecsInstanceProfile = aws.iam.InstanceProfile(
      'ecs-iam-instance-profile',
      args: aws.iam.InstanceProfileArgs(role: ecsInstanceRole.name),
    );

    final ecsInstanceAmi = pulumi.Output(
      aws.ec2.getAmi(
        aws.ec2.GetAmiArgs(
          mostRecent: true,
          owners: ['amazon'].output(),
          filters: [
            aws.ec2.GetAmiFilter(
              name: 'name',
              values: ['amzn2-ami-ecs-hvm-*-x86_64-*'].output(),
            ),
          ].output(),
        ),
      ),
    );

    const clusterName = 'my-fancy-new-ecs-cluster';
    const userData =
        '#!/bin/bash\necho ECS_CLUSTER=my-fancy-new-ecs-cluster >> /etc/ecs/ecs.config';

    final launchConfig = aws.ec2.LaunchConfiguration(
      'launch-config',
      args: aws.ec2.LaunchConfigurationArgs(
        imageId: ecsInstanceAmi.apply((ami) => ami.id),
        instanceType: 't2.micro',
        iamInstanceProfile: ecsInstanceProfile.name,
        userData: userData,
      ),
    );

    final autoScaling = aws.autoscaling.Group(
      'auto-scaling',
      args: aws.autoscaling.GroupArgs(
        launchConfiguration: launchConfig.name,
        minSize: asgSize,
        maxSize: asgSize,
        protectFromScaleIn: false,
        vpcZoneIdentifiers: defaultVpcSubnets.apply((subnets) => subnets.ids),
      ),
    );

    aws.ecs.CapacityProvider(
      'capacity-provider',
      args: aws.ecs.CapacityProviderArgs(
        autoScalingGroupProvider: aws
            .ecs
            .CapacityProviderAutoScalingGroupProviderArgs(
              autoScalingGroupArn: autoScaling.arn,
              managedTerminationProtection: 'DISABLED',
              managedScaling: aws
                  .ecs
                  .CapacityProviderAutoScalingGroupProviderManagedScalingArgs(
                    status: 'DISABLED',
                  ),
            ),
      ),
    );

    final cluster = aws.ecs.Cluster(
      'cluster',
      args: aws.ecs.ClusterArgs(name: clusterName),
    );

    final loadBalancer = aws.lb.LoadBalancer(
      'load-balancer',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'application',
        securityGroups: [sg.id].output(),
        subnets: defaultVpcSubnets.apply((subnets) => subnets.ids),
        internal: false,
      ),
    );

    final appTg = aws.lb.TargetGroup(
      'app-tg',
      args: aws.lb.TargetGroupArgs(
        port: 80,
        protocol: 'HTTP',
        targetType: 'ip',
        vpcId: defaultVpc.apply((vpc) => vpc.id),
      ),
    );

    final webListener = aws.lb.Listener(
      'web',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: loadBalancer.arn,
        port: 80,
        defaultActions: [
          aws.lb.ListenerDefaultActionArgs(type: 'forward', targetGroupArn: appTg.arn),
        ].output(),
      ),
    );

    final taskDef = aws.ecs.TaskDefinition(
      'my-app',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'ec2-task-definition',
        cpu: '256',
        memory: '512',
        networkMode: 'awsvpc',
        requiresCompatibilities: ['EC2'].output(),
        executionRoleArn: taskExecutionRole.arn,
        containerDefinitions: jsonEncode([
          {
            'name': 'my-app',
            'image': 'nginx',
            'portMappings': [
              {'containerPort': 80, 'hostPort': 80, 'protocol': 'tcp'},
            ],
          },
        ]),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [cluster]),
    );

    aws.ecs.Service(
      'my-task-runner',
      args: aws.ecs.ServiceArgs(
        cluster: cluster.arn,
        launchType: 'EC2',
        desiredCount: 1,
        taskDefinition: taskDef.arn,
        networkConfiguration: aws.ecs.ServiceNetworkConfigurationArgs(
          assignPublicIp: false,
          subnets: defaultVpcSubnets.apply((subnets) => subnets.ids),
          securityGroups: [sg.id].output(),
        ),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancerArgs(
            targetGroupArn: appTg.arn,
            containerName: 'my-app',
            containerPort: 80,
          ),
        ].output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [webListener]),
    );

    appUrl = pulumi.Output.concat('http://', loadBalancer.dnsName);
    note = 'You may need to wait a minute for AWS to spin up the service. If the URL returns a 503, retry shortly.'
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

