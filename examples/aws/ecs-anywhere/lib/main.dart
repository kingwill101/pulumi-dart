import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class EcsAnywhereStack extends pulumi.Stack {
  late final pulumi.Output<String> clusterName;
  late final pulumi.Output<String> activationId;

  EcsAnywhereStack() {
    final projectConfig = pulumi.Config();
    final numberNodes = (projectConfig.getNumber('numberNodes') ?? 2).toInt();
    final awsRegion = pulumi.Config('aws').get('region') ?? 'us-east-1';

    final ssmRole = aws.iam.Role(
      'ssmRole',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'ssm.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'rpa-ssmrole-ssminstancecore',
      args: aws.iam.RolePolicyAttachmentArgs(
        policyArn: 'arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore',
        role: ssmRole.name,
      ),
    );

    aws.iam.RolePolicyAttachment(
      'rpa-ssmrole-ec2containerservice',
      args: aws.iam.RolePolicyAttachmentArgs(
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role',
        role: ssmRole.name,
      ),
    );

    final executionRole = aws.iam.Role(
      'taskExecutionRole',
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
        }),
      ),
    );
    aws.iam.RolePolicyAttachment(
      'rpa-ecsanywhere-ecstaskexecution',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: executionRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy',
      ),
    );

    final taskRole = aws.iam.Role(
      'taskRole',
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
        }),
      ),
    );

    aws.iam.RolePolicy(
      'taskRolePolicy',
      args: aws.iam.RolePolicyArgs(
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
        }),
      ),
    );

    final activation = aws.ssm.Activation(
      'ecsanywhere-ssmactivation',
      args: aws.ssm.ActivationArgs(
        iamRole: ssmRole.name,
        registrationLimit: numberNodes,
      ),
    );

    final cluster = aws.ecs.Cluster('cluster');
    final logGroup = aws.cloudwatch.LogGroup('logGroup');

    final taskDefinition = aws.ecs.TaskDefinition(
      'taskdefinition',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'ecs-anywhere',
        requiresCompatibilities: ['EXTERNAL'],
        taskRoleArn: taskRole.arn,
        executionRoleArn: executionRole.arn,
        containerDefinitions: logGroup.name.apply(
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

    aws.ecs.Service(
      'service',
      args: aws.ecs.ServiceArgs(
        launchType: 'EXTERNAL',
        taskDefinition: taskDefinition.arn,
        cluster: cluster.id,
        desiredCount: numberNodes > 0 ? numberNodes - 1 : 0,
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
