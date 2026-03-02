import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class LambdaSlackStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  LambdaSlackStack() {
    final config = pulumi.Config();
    final slackWebhookUrl = config.require('slackWebhookUrl');

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

    aws.iam.RolePolicyAttachment(
      'lambdaRolePolicy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole'
                .input(),
      ),
    );

    final lambdaFunction = aws.lambda.FunctionType(
      'myLambda',
      args: aws.lambda.FunctionArgs(
        runtime: 'nodejs20.x'.input(),
        role: lambdaRole.arn,
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./app').input(),
        environment: aws.lambda.FunctionEnvironment(
          variables: {'SLACK_WEBHOOK_URL': slackWebhookUrl}.input(),
        ).input(),
        memorySize: 128.input(),
        timeout: 30.input(),
        tags: {'Environment': 'dev'}.input(),
      ),
    );

    final api = aws.apigateway.RestApi(
      'myApi',
      args: aws.apigateway.RestApiArgs(
        description: 'API Gateway for Lambda function'.input(),
      ),
    );

    final rootMethod = aws.apigateway.Method(
      'rootMethod',
      args: aws.apigateway.MethodArgs(
        restApi: api.id,
        resourceId: api.rootResourceId,
        httpMethod: 'ANY'.input(),
        authorization: 'NONE'.input(),
      ),
    );

    final rootIntegration = aws.apigateway.Integration(
      'rootIntegration',
      args: aws.apigateway.IntegrationArgs(
        restApi: api.id,
        resourceId: api.rootResourceId,
        httpMethod: rootMethod.httpMethod,
        integrationHttpMethod: 'POST'.input(),
        type: 'AWS_PROXY'.input(),
        uri: lambdaFunction.invokeArn,
      ),
    );

    aws.lambda.Permission(
      'apiGatewayPermission',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        function: lambdaFunction.arn,
        principal: 'apigateway.amazonaws.com'.input(),
        sourceArn: api.executionArn.apply<String>((arn) => '$arn/*/*'),
      ),
    );

    final deployment = aws.apigateway.DeploymentType(
      'myDeployment',
      args: aws.apigateway.DeploymentArgs(
        restApi: api.id,
        triggers: rootIntegration.id.apply<Map<String, String>>((id) {
          return {'redeploy': id};
        }),
      ),
    );

    final stage = aws.apigateway.Stage(
      'dev',
      args: aws.apigateway.StageArgs(
        stageName: 'dev'.input(),
        restApi: api.id,
        deployment: deployment.id,
      ),
    );

    url = stage.invokeUrl;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
