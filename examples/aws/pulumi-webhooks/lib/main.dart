import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_aws_apigateway/pulumi_aws_apigateway.dart'
    as awsx_apigw;

class PulumiWebhooksStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  PulumiWebhooksStack() {
    final config = pulumi.Config();
    final slackWebhook = config.require('slackWebhook');
    final slackChannel = config.require('slackChannel');
    final sharedSecret = config.get('sharedSecret');

    final lambdaRole = aws.iam.Role(
      'webhook-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'lambda.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'webhook-basic-exec',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole',
      ),
    );

    final handler = aws.lambda.FunctionType(
      'pulumi-webhook-handler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: aws.lambda.Runtime.nodeJS20dX.value,
        handler: 'index.handler',
        code: pulumi.FileArchive('./lambda/handler'),
        environment: aws.lambda.FunctionEnvironment(
          variables: {
            'SLACK_WEBHOOK': slackWebhook,
            'SLACK_CHANNEL': slackChannel,
            if (sharedSecret != null) 'SHARED_SECRET': sharedSecret,
          },
        ).output(),
      ),
    );

    final api = awsx_apigw.index.RestAPI(
      'pulumi-webhook-api',
      args: awsx_apigw.index.RestAPIArgs(
        binaryMediaTypes: ['application/json'].output(),
        routes: [
          awsx_apigw.index.Route(
            path: '/',
            method: awsx_apigw.index.Method.valueGET,
            eventHandler: handler,
          ),
          awsx_apigw.index.Route(
            path: '/',
            method: awsx_apigw.index.Method.valuePOST,
            eventHandler: handler,
          ),
        ].output(),
      ),
    );

    url = api.url;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
