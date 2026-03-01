import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/apigateway.dart' as aws_apigw;
import 'package:pulumi_aws/iam.dart' as aws_iam;
import 'package:pulumi_aws/lambda.dart' as aws_lambda;
import 'package:pulumi_aws_apigateway/pulumi_aws_apigateway.dart'
    as awsx_apigw;

class ApigatewayRoutesStack extends pulumi.Stack {
  late final pulumi.Output<String> url;
  late final pulumi.Output<String> swaggerUrl;
  late final pulumi.Output<String> apiKeyValue;

  ApigatewayRoutesStack() {
    final lambdaRole = aws_iam.Role(
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
        }),
      ),
    );

    aws_iam.RolePolicyAttachment(
      'lambda-basic-exec',
      args: aws_iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole',
      ),
    );

    final helloHandler = aws_lambda.FunctionType(
      'hello-handler',
      args: aws_lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: aws_lambda.Runtime.nodeJS20dX.value,
        handler: 'index.handler',
        code: pulumi.FileArchive('./lambda/hello'),
      ),
    );

    final api = awsx_apigw.index.RestAPI(
      'api',
      args: awsx_apigw.index.RestAPIArgs(
        routes: [
          awsx_apigw.index.Route(path: 'static', localPath: './www'),
          awsx_apigw.index.Route(
            path: 'lambda',
            method: awsx_apigw.index.Method.valueGET,
            eventHandler: helloHandler,
          ),
          awsx_apigw.index.Route(
            path: 'proxy',
            target: awsx_apigw.index.Target(
              type: awsx_apigw.index.IntegrationType.valueHttpProxy,
              uri: 'https://www.google.com',
            ),
          ),
          awsx_apigw.index.Route(
            path: 'swagger',
            method: awsx_apigw.index.Method.valueGET,
            data: {
              'x-amazon-apigateway-integration': {
                'httpMethod': 'GET',
                'passthroughBehavior': 'when_no_match',
                'type': 'http_proxy',
                'uri': 'https://httpbin.org/uuid',
              },
            },
          ),
          awsx_apigw.index.Route(
            path: 'key-authorized',
            method: awsx_apigw.index.Method.valueGET,
            eventHandler: helloHandler,
            apiKeyRequired: true,
          ),
        ].output(),
      ),
    );

    final swaggerApi = awsx_apigw.index.RestAPI(
      'swagger-api',
      args: awsx_apigw.index.RestAPIArgs(
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

    final apiKey = aws_apigw.ApiKey('api-key');
    final usagePlan = aws_apigw.UsagePlan(
      'usage-plan',
      args: aws_apigw.UsagePlanArgs(
        apiStages: [
          aws_apigw.UsagePlanApiStage(
            apiId: api.api.apply((a) => a.id),
            stage: api.stage.apply((s) => s.stageName),
          ),
        ],
      ),
    );

    aws_apigw.UsagePlanKey(
      'usage-plan-key',
      args: aws_apigw.UsagePlanKeyArgs(
        keyId: apiKey.id,
        keyType: 'API_KEY',
        usagePlanId: usagePlan.id,
      ),
    );

    url = api.url;
    swaggerUrl = swaggerApi.url;
    apiKeyValue = apiKey.value;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('url', url),
      pulumi.OutputProperty('swaggerUrl', swaggerUrl),
      pulumi.OutputProperty('apiKeyValue', apiKeyValue),
    ];
  }
}
