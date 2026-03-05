import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/iam.dart' as aws_iam;
import 'package:pulumi_aws/lambda.dart' as aws_lambda;
import 'package:pulumi_command/local.dart' as commandlocal;

class CommandLambdaInvokeStack extends pulumi.Stack {
  CommandLambdaInvokeStack() : super() {
    final awsConfig = pulumi.Config('aws');
    final awsRegion = awsConfig.require('region');

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

    aws_iam.RolePolicyAttachment(
      'lambda-basic-exec',
      args: aws_iam.RolePolicyAttachmentArgs(
        role: role.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole'
                .output(),
      ),
    );

    final fn = aws_lambda.FunctionType(
      'f',
      args: aws_lambda.FunctionArgs(
        publish: true.output(),
        role: role.arn,
        code: pulumi.FileArchive('./lambda').output(),
        handler: 'index.handler'.output(),
        runtime: aws_lambda.Runtime.nodeJS20dX.wireValue.output(),
      ),
    );

    final rand = commandlocal.Command(
      'execf',
      args: commandlocal.CommandArgs(
        create:
            '''aws lambda invoke --function-name "\$FN" --payload '{"len": 10}' --cli-binary-format raw-in-base64-out out.txt >/dev/null && cat out.txt | tr -d '"' && rm out.txt'''
                .output(),
        environment: pulumi.Output.tuple(fn.qualifiedArn, awsRegion.output())
            .apply((values) {
              return {
                'FN': values.$1,
                'AWS_REGION': values.$2,
                'AWS_PAGER': '',
              };
            }),
      ),
    );

    registerOutputs({'output': rand.stdout});
  }
}
