import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> lambda;
  late final pulumi.Output<String> functionUrl;

  ExampleStack() {
    final role = aws.iam.Role(
      'task-exec-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Principal': {'Service': 'lambda.amazonaws.com'},
              'Effect': 'Allow',
              'Sid': '',
            },
          ],
        }).input(),
      ),
    );

    final lambdaLogPolicy = aws.iam.RolePolicy(
      'lambda-log-policy',
      args: aws.iam.RolePolicyArgs(
        role: role.id,
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

    final lambdaFunction = aws.lambda.FunctionType(
      'basicLambda',
      args: aws.lambda.FunctionArgs(
        role: role.arn,
        handler: 'bootstrap'.input(),
        runtime: 'provided.al2'.input(),
        code: pulumi.FileArchive('./handler/handler.zip').input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [lambdaLogPolicy]),
    );

    final url = aws.lambda.FunctionUrl(
      'basicLambdaUrl',
      args: aws.lambda.FunctionUrlArgs(
        functionName: lambdaFunction.name,
        authorizationType: 'NONE'.input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [lambdaFunction]),
    );

    lambda = lambdaFunction.arn;
    functionUrl = url.functionUrl;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('lambda', lambda),
      pulumi.OutputProperty('functionUrl', functionUrl),
    ];
  }
}
