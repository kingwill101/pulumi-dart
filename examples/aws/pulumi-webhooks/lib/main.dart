import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_aws_apigateway/pulumi_aws_apigateway.dart'
    as awsx_apigw;
import 'package:pulumi_aws_apigateway/index.dart' as awsx_apigw_index;

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
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'webhook-basic-exec',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole'
                .input(),
      ),
    );

    final handler = aws.lambda.FunctionType(
      'pulumi-webhook-handler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./lambda/handler').input(),
        environment: aws.lambda.FunctionEnvironment(
          variables: {
            'SLACK_WEBHOOK': slackWebhook,
            'SLACK_CHANNEL': slackChannel,
            if (sharedSecret != null) 'SHARED_SECRET': sharedSecret,
          }.input(),
        ).input(),
      ),
    );

    final api = awsx_apigw.index.RestAPI(
      'pulumi-webhook-api',
      args: awsx_apigw.index.RestAPIArgs(
        binaryMediaTypes: ['application/json'].input(),
        routes: [
          awsx_apigw.index.Route(
            path: '/'.input(),
            method: awsx_apigw_index.Method.valueGET.input(),
            eventHandler: handler.input(),
          ),
          awsx_apigw.index.Route(
            path: '/'.input(),
            method: awsx_apigw_index.Method.valuePOST.input(),
            eventHandler: handler.input(),
          ),
        ].input(),
      ),
    );

    url = api.url;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
