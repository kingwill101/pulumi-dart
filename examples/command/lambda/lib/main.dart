import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/iam.dart' as aws_iam;
import 'package:pulumi_aws/lambda.dart' as aws_lambda;
import 'package:pulumi_command/local.dart' as commandlocal;

class CommandLambdaStack extends pulumi.Stack {
  CommandLambdaStack() : super() {
    final build = commandlocal.Command(
      'build',
      args: commandlocal.CommandArgs(
        create: 'yarn && yarn tsc'.output(),
        dir: 'lambda'.output(),
        archivePaths: ['*.js', '*.js.map'].output(),
      ),
    );

    final role = aws_iam.Role(
      'lambda-role',
      args: aws_iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'lambda.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }).output(),
      ),
    );

    final lambda = aws_lambda.FunctionType(
      'ts-lambda',
      args: aws_lambda.FunctionArgs(
        role: role.arn,
        code: build.archive,
        handler: 'index.handler'.output(),
        runtime: aws_lambda.Runtime.nodeJS16dX.wireValue.output(),
      ),
    );

    registerOutputs({
      'invokeArn': lambda.invokeArn,
      'lambdaArchive': build.archive,
    });
  }
}
