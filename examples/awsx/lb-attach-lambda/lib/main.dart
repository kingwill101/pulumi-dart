import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_aws/lambda.dart' as aws_lambda;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class TsLbAttachLambdaStack extends pulumi.Stack {
  late final pulumi.Output<String?> url;

  TsLbAttachLambdaStack() {
    final lb = awsx.lb.ApplicationLoadBalancer(
      'lb',
      args: awsx.lb.ApplicationLoadBalancerArgs(
        defaultTargetGroup: awsx.lb
            .TargetGroup(targetType: 'lambda'.input())
            .input(),
      ),
    );

    final role = aws.iam.Role(
      'lambda-role',
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

    aws.iam.RolePolicyAttachment(
      'lambda-basic-execution',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: role.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole'
                .input(),
      ),
    );

    const lambdaSource =
        "exports.handler = async () => ({\n"
        "  statusCode: 200,\n"
        "  statusDescription: '200 OK',\n"
        "  isBase64Encoded: false,\n"
        "  headers: {\n"
        "    'Content-Type': 'text/html',\n"
        "  },\n"
        "  body: '<h1>Hello from Lambda!</h1>',\n"
        "});\n";

    final lambda = aws.lambda.FunctionType(
      'func',
      args: aws.lambda.FunctionArgs(
        role: role.arn,
        runtime: aws_lambda.Runtime.nodeJS20dX.value.input(),
        handler: 'index.handler'.input(),
        code: pulumi.AssetArchive({
          'index.js': pulumi.StringAsset(lambdaSource),
        }).input(),
      ),
    );

    awsx.lb.TargetGroupAttachment(
      'attachment',
      args: awsx.lb.TargetGroupAttachmentArgs(
        targetGroup: lb.defaultTargetGroup.apply((targetGroup) => targetGroup!),
        lambda: lambda.input(),
      ),
    );

    url = lb.loadBalancer.apply<String?>(
      (loadBalancer) => loadBalancer?.dnsName,
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
