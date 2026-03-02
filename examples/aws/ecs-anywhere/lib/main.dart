import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/ecs.dart' as ecs;
import 'package:pulumi_aws/iam.dart' as iam;
import 'package:pulumi_aws/ssm.dart' as ssm;
import 'package:pulumi_aws/cloudwatch.dart' as cloudwatch;

class EcsAnywhereStack extends pulumi.Stack {
  late final pulumi.Output<String> clusterName;
  late final pulumi.Output<String> activationId;

  EcsAnywhereStack() {
    final projectConfig = pulumi.Config();
    final numberNodes = (projectConfig.getNumber('numberNodes') ?? 2).toInt();
    final awsRegion = pulumi.Config('aws').get('region') ?? 'us-east-1';

    final ssmRole = iam.Role(
      'ssmRole',
      args: iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'ssm.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }).input(),
      ),
    );

    iam.RolePolicyAttachment(
      'rpa-ssmrole-ssminstancecore',
      args: iam.RolePolicyAttachmentArgs(
        policyArn: 'arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore'
            .input(),
        role: ssmRole.name,
      ),
    );

    iam.RolePolicyAttachment(
      'rpa-ssmrole-ec2containerservice',
      args: iam.RolePolicyAttachmentArgs(
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role'
                .input(),
        role: ssmRole.name,
      ),
    );

    final executionRole = iam.Role(
      'taskExecutionRole',
      args: iam.RoleArgs(
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
    iam.RolePolicyAttachment(
      'rpa-ecsanywhere-ecstaskexecution',
      args: iam.RolePolicyAttachmentArgs(
        role: executionRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy'
                .input(),
      ),
    );

    final taskRole = iam.Role(
      'taskRole',
      args: iam.RoleArgs(
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

    iam.RolePolicy(
      'taskRolePolicy',
      args: iam.RolePolicyArgs(
        role: taskRole.id,
        policy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Action': [
                'ssmmessages:CreateControlChannel',
                'ssmmessages:CreateDataChannel',
                'ssmmessages:OpenControlChannel',
                'ssmmessages:OpenDataChannel',
              ],
              'Resource': '*',
            },
            {
              'Effect': 'Allow',
              'Action': [
                'logs:DescribeLogGroups',
                'logs:CreateLogStream',
                'logs:CreateLogGroup',
                'logs:DescribeLogStreams',
                'logs:PutLogEvents',
              ],
              'Resource': '*',
            },
          ],
        }).input(),
      ),
    );

    final activation = ssm.Activation(
      'ecsanywhere-ssmactivation',
      args: ssm.ActivationArgs(
        iamRole: ssmRole.name,
        registrationLimit: numberNodes.input(),
      ),
    );

    final cluster = ecs.Cluster('cluster');
    final logGroup = cloudwatch.LogGroup('logGroup');

    final taskDefinition = ecs.TaskDefinition(
      'taskdefinition',
      args: ecs.TaskDefinitionArgs(
        family: 'ecs-anywhere'.input(),
        requiresCompatibilities: ['EXTERNAL'].input(),
        taskRoleArn: taskRole.arn,
        executionRoleArn: executionRole.arn,
        containerDefinitions: logGroup.name.apply<String>(
          (lg) => jsonEncode([
            {
              'name': 'app',
              'image': 'nginx:latest',
              'cpu': 256,
              'memory': 256,
              'essential': true,
              'portMappings': [
                {'containerPort': 80, 'hostPort': 80},
              ],
              'logConfiguration': {
                'logDriver': 'awslogs',
                'options': {
                  'awslogs-group': lg,
                  'awslogs-region': awsRegion,
                  'awslogs-stream-prefix': 'ecs-anywhere',
                },
              },
            },
          ]),
        ),
      ),
    );

    ecs.Service(
      'service',
      args: ecs.ServiceArgs(
        launchType: 'EXTERNAL'.input(),
        taskDefinition: taskDefinition.arn,
        cluster: cluster.id,
        desiredCount: (numberNodes > 0 ? numberNodes - 1 : 0).input(),
      ),
    );

    clusterName = cluster.name;
    activationId = activation.id;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('clusterName', clusterName),
      pulumi.OutputProperty('activationId', activationId),
    ];
  }
}
