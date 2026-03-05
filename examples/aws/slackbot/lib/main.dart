import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class SlackbotStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  SlackbotStack() {
    final mentionbotConfig = pulumi.Config('mentionbot');
    final slackToken = mentionbotConfig.require('slackToken');
    final verificationToken = mentionbotConfig.require('verificationToken');

    final subscriptionsTable = aws.dynamodb.Table(
      'subscriptions',
      args: aws.dynamodb.TableArgs(
        attributes: [
          aws.dynamodb.TableAttribute(name: 'id'.input(), type: 'S'.input()),
        ].input(),
        hashKey: 'id'.input(),
        billingMode: 'PAY_PER_REQUEST'.input(),
      ),
    );

    final messageTopic = aws.sns.Topic('messages');

    final lambdaRole = aws.iam.Role(
      'lambda-role',
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

    aws.iam.RolePolicy(
      'lambda-logs-policy',
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

    aws.iam.RolePolicy(
      'lambda-dynamo-policy',
      args: aws.iam.RolePolicyArgs(
        role: lambdaRole.id,
        policy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Action': [
                'dynamodb:GetItem',
                'dynamodb:DeleteItem',
                'dynamodb:PutItem',
                'dynamodb:UpdateItem',
              ],
              'Resource': subscriptionsTable.arn,
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicy(
      'lambda-sns-policy',
      args: aws.iam.RolePolicyArgs(
        role: lambdaRole.id,
        policy: messageTopic.arn
            .apply<String>(
              (topicArn) => jsonEncode({
                'Version': '2012-10-17',
                'Statement': [
                  {
                    'Effect': 'Allow',
                    'Action': ['sns:Publish'],
                    'Resource': topicArn,
                  },
                ],
              }),
            )
            .input(),
      ),
    );

    final webhookFn = aws.lambda.FunctionType(
      'webhook-handler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./lambda/webhook').input(),
        environment: aws.lambda
            .FunctionEnvironment(
              variables:
                  pulumi.Output.all([
                    subscriptionsTable.name,
                    messageTopic.arn,
                  ]).apply<Map<String, String>>((values) {
                    final tableName = values[0];
                    final topicArn = values[1];
                    return <String, String>{
                      'SLACK_TOKEN': slackToken,
                      'SLACK_VERIFICATION_TOKEN': verificationToken,
                      'SUBSCRIPTIONS_TABLE_NAME': tableName,
                      'MESSAGE_TOPIC_ARN': topicArn,
                    };
                  }).input(),
            )
            .input(),
      ),
    );

    final processFn = aws.lambda.FunctionType(
      'process-topic-message',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./lambda/process').input(),
        environment: aws.lambda
            .FunctionEnvironment(
              variables: subscriptionsTable.name
                  .apply<Map<String, String>>(
                    (tableName) => {
                      'SLACK_TOKEN': slackToken,
                      'SUBSCRIPTIONS_TABLE_NAME': tableName,
                    },
                  )
                  .input(),
            )
            .input(),
      ),
    );

    aws.sns.TopicSubscription(
      'message-processor-subscription',
      args: aws.sns.TopicSubscriptionArgs(
        topic: messageTopic.arn,
        protocol: 'lambda'.input(),
        endpoint: processFn.arn,
      ),
    );

    aws.lambda.Permission(
      'allow-sns-invoke',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        function: processFn.name,
        principal: 'sns.amazonaws.com'.input(),
        sourceArn: messageTopic.arn,
      ),
    );

    final gateway = aws.apigateway.RestApi(
      'mentionbot-api',
      args: aws.apigateway.RestApiArgs(
        name: 'mentionbot-api'.input(),
        description: 'Slack mention bot webhook API'.input(),
      ),
    );

    final apiResource = aws.apigateway.ResourceType(
      'mentionbot-proxy-resource',
      args: aws.apigateway.ResourceArgs(
        restApi: gateway.id,
        parentId: gateway.rootResourceId,
        pathPart: '{proxy+}'.input(),
      ),
    );

    final anyMethod = aws.apigateway.Method(
      'mentionbot-any-method',
      args: aws.apigateway.MethodArgs(
        restApi: gateway.id,
        resourceId: apiResource.id,
        httpMethod: 'ANY'.input(),
        authorization: 'NONE'.input(),
      ),
    );

    aws.apigateway.Integration(
      'mentionbot-lambda-integration',
      args: aws.apigateway.IntegrationArgs(
        restApi: gateway.id,
        resourceId: apiResource.id,
        httpMethod: anyMethod.httpMethod,
        integrationHttpMethod: 'POST'.input(),
        type: 'AWS_PROXY'.input(),
        uri: webhookFn.invokeArn,
      ),
    );

    final deployment = aws.apigateway.DeploymentType(
      'mentionbot-api-deployment',
      args: aws.apigateway.DeploymentArgs(
        restApi: gateway.id,
        description: 'Slackbot API deployment'.input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [anyMethod]),
    );

    final stage = aws.apigateway.Stage(
      'mentionbot-api-stage',
      args: aws.apigateway.StageArgs(
        restApi: gateway.id,
        deployment: deployment.id,
        stageName: 'prod'.input(),
      ),
    );

    aws.lambda.Permission(
      'allow-apigateway-invoke',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        function: webhookFn.name,
        principal: 'apigateway.amazonaws.com'.input(),
        sourceArn: stage.executionArn.apply((arn) => '$arn*/*'),
      ),
    );

    url = stage.invokeUrl;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
