import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class StepFunctionsStack extends pulumi.Stack {
  late final pulumi.Output<String> stateMachineArn;

  StepFunctionsStack() {
    final lambdaRole = aws.iam.Role(
      'lambdaRole',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Principal': {'Service': 'lambda.amazonaws.com'},
              'Effect': 'Allow',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicy(
      'lambdaRolePolicy',
      args: aws.iam.RolePolicyArgs(
        role: lambdaRole.id,
        policy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Action': [
                'logs:CreateLogGroup',
                'logs:CreateLogStream',
                'logs:PutLogEvents',
              ],
              'Resource': 'arn:aws:logs:*:*:*',
            },
          ],
        }).input(),
      ),
    );

    final sfnRole = aws.iam.Role(
      'sfnRole',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Principal': {'Service': 'states.amazonaws.com'},
              'Effect': 'Allow',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicy(
      'sfnRolePolicy',
      args: aws.iam.RolePolicyArgs(
        role: sfnRole.id,
        policy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Action': ['lambda:InvokeFunction'],
              'Resource': '*',
            },
          ],
        }).input(),
      ),
    );

    final helloFunction = aws.lambda.FunctionType(
      'helloFunction',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'python3.11'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./app/hello').input(),
      ),
    );

    final worldFunction = aws.lambda.FunctionType(
      'worldFunction',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'python3.11'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./app/world').input(),
      ),
    );

    final stateMachine = aws.sfn.StateMachine(
      'stateMachine',
      args: aws.sfn.StateMachineArgs(
        roleArn: sfnRole.arn,
        definition: pulumi
            .Output.all([helloFunction.arn, worldFunction.arn])
            .apply<String>((arns) {
              final helloArn = arns[0];
              final worldArn = arns[1];
              return jsonEncode({
                'Comment':
                    'A Hello World example of the Amazon States Language using two AWS Lambda Functions',
                'StartAt': 'Hello',
                'States': {
                  'Hello': {
                    'Type': 'Task',
                    'Resource': helloArn,
                    'Next': 'World',
                  },
                  'World': {
                    'Type': 'Task',
                    'Resource': worldArn,
                    'End': true,
                  },
                },
              });
            }),
      ),
    );

    stateMachineArn = stateMachine.id;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('stateMachineArn', stateMachineArn)];
  }
}
