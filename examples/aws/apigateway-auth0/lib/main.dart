import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

Future<void> run() async {
  final config = pulumi.Config();
  final _ = config.require('jwksUri');
  final audience = config.require('audience');
  final issuer = config.require('issuer');

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
    'lambdaBasicExecution',
    args: aws.iam.RolePolicyAttachmentArgs(
      role: lambdaRole.name,
      policyArn:
          'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole'
              .input(),
    ),
  );

  final hello = aws.lambda.FunctionType(
    'helloHandler',
    args: aws.lambda.FunctionArgs(
      role: lambdaRole.arn,
      runtime: 'python3.11'.input(),
      handler: 'index.handler'.input(),
      code: pulumi.FileArchive('./app').input(),
    ),
  );

  final api = aws.apigatewayv2.Api(
    'myapi',
    args: aws.apigatewayv2.ApiArgs(
      name: 'myapi'.input(),
      protocolType: 'HTTP'.input(),
    ),
  );

  final auth0Jwt = aws.apigatewayv2.Authorizer(
    'jwt-rsa-custom-authorizer',
    args: aws.apigatewayv2.AuthorizerArgs(
      apiId: api.id,
      authorizerType: 'JWT'.input(),
      name: 'jwt-rsa-custom-authorizer'.input(),
      identitySources: [r'$request.header.Authorization'].input(),
      jwtConfiguration: aws.apigatewayv2.AuthorizerJwtConfiguration(
        audiences: [audience].input(),
        issuer: issuer.input(),
      ).input(),
    ),
  );

  final integration = aws.apigatewayv2.Integration(
    'helloIntegration',
    args: aws.apigatewayv2.IntegrationArgs(
      apiId: api.id,
      integrationType: 'AWS_PROXY'.input(),
      integrationUri: hello.invokeArn,
      integrationMethod: 'POST'.input(),
      payloadFormatVersion: '2.0'.input(),
    ),
  );

  aws.apigatewayv2.Route(
    'helloRoute',
    args: aws.apigatewayv2.RouteArgs(
      apiId: api.id,
      routeKey: 'GET /hello'.input(),
      target: integration.id.apply<String>((id) => 'integrations/$id'),
      authorizationType: 'JWT'.input(),
      authorizerId: auth0Jwt.id,
    ),
  );

  aws.apigatewayv2.Stage(
    'defaultStage',
    args: aws.apigatewayv2.StageArgs(
      apiId: api.id,
      name: r'$default'.input(),
      autoDeploy: true.input(),
    ),
  );

  aws.lambda.Permission(
    'allowApiInvoke',
    args: aws.lambda.PermissionArgs(
      action: 'lambda:InvokeFunction'.input(),
      function: hello.arn,
      principal: 'apigateway.amazonaws.com'.input(),
      sourceArn: api.executionArn.apply<String>((arn) => '$arn/*/*'),
    ),
  );

  pulumi.export('url', api.apiEndpoint.apply<String>((endpoint) => '$endpoint/hello'));
}
