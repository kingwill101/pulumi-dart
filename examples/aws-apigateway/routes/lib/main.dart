import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/apigateway.dart' as aws_apigateway;
import 'package:pulumi_aws/cognito.dart' as aws_cognito;
import 'package:pulumi_aws/iam.dart' as aws_iam;
import 'package:pulumi_aws/lambda.dart' as aws_lambda;
import 'package:pulumi_aws_apigateway/index.dart' as awsx_apigateway;

class AwsApiGatewayRoutesStack extends pulumi.Stack {
  AwsApiGatewayRoutesStack() : super() {
    final userPool = aws_cognito.UserPool('user-pool');
    final userPoolClient = aws_cognito.UserPoolClient(
      'user-pool-client',
      args: aws_cognito.UserPoolClientArgs(
        userPoolId: userPool.id,
        explicitAuthFlows: ['ADMIN_NO_SRP_AUTH'].output(),
      ),
    );

    final lambdaRole = aws_iam.Role(
      'api-lambda-role',
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
      'api-lambda-basic-exec',
      args: aws_iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole'
                .output(),
      ),
    );

    final helloHandler = aws_lambda.FunctionType(
      'hello-handler',
      args: aws_lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.output(),
        handler: 'index.handler'.output(),
        code: pulumi.AssetArchive({
          'index.js': pulumi.StringAsset(
            "exports.handler = async () => ({ statusCode: 200, body: 'Hello, API Gateway!' });",
          ),
        }).output(),
      ),
    );

    final authLambda = aws_lambda.FunctionType(
      'lambda-authorizer',
      args: aws_lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.output(),
        handler: 'index.handler'.output(),
        code: pulumi.AssetArchive({
          'index.js': pulumi.StringAsset('''
exports.handler = async (event) => {
  const token = event?.headers?.Authorization || event?.authorizationToken || "";
  if (token === "goodToken") {
    return {
      principalId: "user",
      policyDocument: {
        Version: "2012-10-17",
        Statement: [{ Action: "execute-api:Invoke", Effect: "Allow", Resource: "*" }],
      },
      context: { approved: "true" }
    };
  }
  throw new Error("Unauthorized");
};
'''),
        }).output(),
      ),
    );

    final api = awsx_apigateway.RestAPI(
      'api',
      args: awsx_apigateway.RestAPIArgs(
        routes: [
          awsx_apigateway.Route(
            path: 'static'.output(),
            localPath: 'www'.output(),
          ),
          awsx_apigateway.Route(
            path: 'lambda'.output(),
            method: awsx_apigateway.Method.valueGET.output(),
            eventHandler: helloHandler.output(),
          ),
          awsx_apigateway.Route(
            path: 'proxy'.output(),
            target: awsx_apigateway.Target(
              type: awsx_apigateway.IntegrationType.valueHttpProxy.output(),
              uri: 'https://www.google.com'.output(),
            ).output(),
          ),
          awsx_apigateway.Route(
            path: 'swagger'.output(),
            method: awsx_apigateway.Method.valueGET.output(),
            data: {
              'x-amazon-apigateway-integration': {
                'httpMethod': 'GET',
                'passthroughBehavior': 'when_no_match',
                'type': 'http_proxy',
                'uri': 'https://httpbin.org/uuid',
              },
            }.output(),
          ),
          awsx_apigateway.Route(
            path: 'cognito-authorized'.output(),
            method: awsx_apigateway.Method.valueGET.output(),
            eventHandler: helloHandler.output(),
            authorizers: userPool.arn.apply(
              (arn) => [
                awsx_apigateway.Authorizer(
                  parameterName: 'Authorization'.output(),
                  identitySource: [
                    'method.request.header.Authorization',
                  ].output(),
                  providerARNs: [arn].output(),
                ),
              ],
            ),
          ),
          awsx_apigateway.Route(
            path: 'lambda-authorized'.output(),
            method: awsx_apigateway.Method.valueGET.output(),
            eventHandler: helloHandler.output(),
            authorizers: [
              awsx_apigateway.Authorizer(
                authType: 'custom'.output(),
                parameterName: 'Authorization'.output(),
                type: 'request'.output(),
                identitySource: [
                  'method.request.header.Authorization',
                ].output(),
                handler: authLambda.output(),
              ),
            ].output(),
          ),
          awsx_apigateway.Route(
            path: 'key-authorized'.output(),
            method: awsx_apigateway.Method.valueGET.output(),
            eventHandler: helloHandler.output(),
            apiKeyRequired: true.output(),
          ),
        ].output(),
      ),
    );

    final swaggerApi = awsx_apigateway.RestAPI(
      'swagger-api',
      args: awsx_apigateway.RestAPIArgs(
        swaggerString: jsonEncode({
          'swagger': '2.0',
          'info': {'title': 'example', 'version': '1.0'},
          'paths': {
            '/': {
              'get': {
                'x-amazon-apigateway-integration': {
                  'httpMethod': 'GET',
                  'passthroughBehavior': 'when_no_match',
                  'type': 'http_proxy',
                  'uri': 'https://httpbin.org/uuid',
                },
              },
            },
          },
          'x-amazon-apigateway-binary-media-types': ['*/*'],
        }).output(),
      ),
    );

    final apiId = api.api.apply<String>((restApi) => restApi?.id ?? "");
    final stageName = api.stage.apply<String>(
      (stage) => stage?.stageName ?? "",
    );

    final apiKey = aws_apigateway.ApiKey('api-key');
    final usagePlan = aws_apigateway.UsagePlan(
      'usage-plan',
      args: aws_apigateway.UsagePlanArgs(
        apiStages: [
          aws_apigateway.UsagePlanApiStage(apiId: apiId, stage: stageName),
        ].output(),
      ),
    );

    aws_apigateway.UsagePlanKey(
      'usage-plan-key',
      args: aws_apigateway.UsagePlanKeyArgs(
        keyId: apiKey.id,
        keyType: 'API_KEY'.output(),
        usagePlanId: usagePlan.id,
      ),
    );

    registerOutputs({
      'url': api.url,
      'userPoolId': userPool.id,
      'userPoolClientId': userPoolClient.id,
      'swaggerUrl': swaggerApi.url,
      'apiKeyValue': apiKey.value,
    });
  }
}
