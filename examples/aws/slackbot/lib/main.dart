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
          aws.dynamodb.TableAttribute(name: 'id', type: 'S'),
        ].output(),
        hashKey: 'id',
        billingMode: 'PAY_PER_REQUEST',
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
        }),
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
        }),
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
        }),
      ),
    );

    aws.iam.RolePolicy(
      'lambda-sns-policy',
      args: aws.iam.RolePolicyArgs(
        role: lambdaRole.id,
        policy: messageTopic.arn.apply(
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
        ),
      ),
    );

    final webhookFn = aws.lambda.FunctionType(
      'webhook-handler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x',
        handler: 'index.handler',
        code: pulumi.FileArchive('./lambda/webhook'),
        environment: aws.lambda.FunctionEnvironment(
          variables: pulumi.Output.all([subscriptionsTable.name, messageTopic.arn]).apply(
            (values) {
              final tableName = values[0] as String;
              final topicArn = values[1] as String;
              return <String, String>{
                'SLACK_TOKEN': slackToken,
                'SLACK_VERIFICATION_TOKEN': verificationToken,
                'SUBSCRIPTIONS_TABLE_NAME': tableName,
                'MESSAGE_TOPIC_ARN': topicArn,
              };
            },
          ),
        ),
      ),
    );

    final processFn = aws.lambda.FunctionType(
      'process-topic-message',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x',
        handler: 'index.handler',
        code: pulumi.FileArchive('./lambda/process'),
        environment: aws.lambda.FunctionEnvironment(
          variables: subscriptionsTable.name.apply(
            (tableName) => {
              'SLACK_TOKEN': slackToken,
              'SUBSCRIPTIONS_TABLE_NAME': tableName,
            },
          ),
        ),
      ),
    );

    aws.sns.TopicSubscription(
      'message-processor-subscription',
      args: aws.sns.TopicSubscriptionArgs(
        topic: messageTopic.arn,
        protocol: 'lambda',
        endpoint: processFn.arn,
      ),
    );

    aws.lambda.Permission(
      'allow-sns-invoke',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction',
        function: processFn.name,
        principal: 'sns.amazonaws.com',
        sourceArn: messageTopic.arn,
      ),
    );

    final gateway = aws.apigateway.RestApi(
      'mentionbot-api',
      args: aws.apigateway.RestApiArgs(
        name: 'mentionbot-api',
        description: 'Slack mention bot webhook API',
      ),
    );

    final apiResource = aws.apigateway.ResourceType(
      'mentionbot-proxy-resource',
      args: aws.apigateway.ResourceArgs(
        restApi: gateway.id,
        parentId: gateway.rootResourceId,
        pathPart: '{proxy+}',
      ),
    );

    final anyMethod = aws.apigateway.Method(
      'mentionbot-any-method',
      args: aws.apigateway.MethodArgs(
        restApi: gateway.id,
        resourceId: apiResource.id,
        httpMethod: 'ANY',
        authorization: 'NONE',
      ),
    );

    aws.apigateway.Integration(
      'mentionbot-lambda-integration',
      args: aws.apigateway.IntegrationArgs(
        restApi: gateway.id,
        resourceId: apiResource.id,
        httpMethod: anyMethod.httpMethod,
        integrationHttpMethod: 'POST',
        type: 'AWS_PROXY',
        uri: webhookFn.invokeArn,
      ),
    );

    final deployment = aws.apigateway.DeploymentType(
      'mentionbot-api-deployment',
      args: aws.apigateway.DeploymentArgs(
        restApi: gateway.id,
        description: 'Slackbot API deployment',
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [anyMethod]),
    );

    final stage = aws.apigateway.Stage(
      'mentionbot-api-stage',
      args: aws.apigateway.StageArgs(
        restApi: gateway.id,
        deployment: deployment.id,
        stageName: 'prod',
      ),
    );

    aws.lambda.Permission(
      'allow-apigateway-invoke',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction',
        function: webhookFn.name,
        principal: 'apigateway.amazonaws.com',
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
