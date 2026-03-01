import 'dart:convert';

import 'package:aws/aws.dart' as aws;
import 'package:pulumi/pulumi.dart' as pulumi;

Future<void> run() async {
  final lambdaRole = aws.iam.Role(
    'lambdaRole',
    aws.iam.RoleArgs(
      assumeRolePolicy: jsonEncode({
        'Version': '2012-10-17',
        'Statement': [
          {
            'Action': 'sts:AssumeRole',
            'Principal': {'Service': 'lambda.amazonaws.com'},
            'Effect': 'Allow',
          },
        ],
      }),
    ),
  );

  aws.iam.RolePolicyAttachment(
    'lambdaBasicExecution',
    aws.iam.RolePolicyAttachmentArgs(
      role: lambdaRole.name,
      policyArn: 'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole',
    ),
  );

  final getHandler = aws.lambda.FunctionType(
    'getHandler',
    aws.lambda.FunctionArgs(
      role: lambdaRole.arn,
      runtime: 'nodejs20.x',
      handler: 'index.handler',
      code: pulumi.FileArchive('./app/get'),
    ),
  );

  final postHandler = aws.lambda.FunctionType(
    'postHandler',
    aws.lambda.FunctionArgs(
      role: lambdaRole.arn,
      runtime: 'nodejs20.x',
      handler: 'index.handler',
      code: pulumi.FileArchive('./app/post'),
    ),
  );

  final deleteHandler = aws.lambda.FunctionType(
    'deleteHandler',
    aws.lambda.FunctionArgs(
      role: lambdaRole.arn,
      runtime: 'nodejs20.x',
      handler: 'index.handler',
      code: pulumi.FileArchive('./app/delete'),
    ),
  );

  final api = aws.apigatewayv2.Api(
    'hello-world',
    aws.apigatewayv2.ApiArgs(
      name: 'hello-world',
      protocolType: 'HTTP',
    ),
  );

  final getIntegration = aws.apigatewayv2.Integration(
    'getIntegration',
    aws.apigatewayv2.IntegrationArgs(
      apiId: api.id,
      integrationType: 'AWS_PROXY',
      integrationUri: getHandler.invokeArn,
      integrationMethod: 'POST',
      payloadFormatVersion: '2.0',
    ),
  );

  final postIntegration = aws.apigatewayv2.Integration(
    'postIntegration',
    aws.apigatewayv2.IntegrationArgs(
      apiId: api.id,
      integrationType: 'AWS_PROXY',
      integrationUri: postHandler.invokeArn,
      integrationMethod: 'POST',
      payloadFormatVersion: '2.0',
    ),
  );

  final deleteIntegration = aws.apigatewayv2.Integration(
    'deleteIntegration',
    aws.apigatewayv2.IntegrationArgs(
      apiId: api.id,
      integrationType: 'AWS_PROXY',
      integrationUri: deleteHandler.invokeArn,
      integrationMethod: 'POST',
      payloadFormatVersion: '2.0',
    ),
  );

  aws.apigatewayv2.Route(
    'getRoute',
    aws.apigatewayv2.RouteArgs(
      apiId: api.id,
      routeKey: 'GET /{route+}',
      target: getIntegration.id.apply<String>((id) => 'integrations/$id'),
    ),
  );

  aws.apigatewayv2.Route(
    'postRoute',
    aws.apigatewayv2.RouteArgs(
      apiId: api.id,
      routeKey: 'POST /{route+}',
      target: postIntegration.id.apply<String>((id) => 'integrations/$id'),
    ),
  );

  aws.apigatewayv2.Route(
    'deleteRoute',
    aws.apigatewayv2.RouteArgs(
      apiId: api.id,
      routeKey: 'DELETE /{route+}',
      target: deleteIntegration.id.apply<String>((id) => 'integrations/$id'),
    ),
  );

  aws.apigatewayv2.Stage(
    'defaultStage',
    aws.apigatewayv2.StageArgs(
      apiId: api.id,
      name: r'$default',
      autoDeploy: true,
    ),
  );

  final sourceArn = api.executionArn.apply<String>((arn) => '$arn/*/*');

  aws.lambda.Permission(
    'getPermission',
    aws.lambda.PermissionArgs(
      action: 'lambda:InvokeFunction',
      function: getHandler.arn,
      principal: 'apigateway.amazonaws.com',
      sourceArn: sourceArn,
    ),
  );

  aws.lambda.Permission(
    'postPermission',
    aws.lambda.PermissionArgs(
      action: 'lambda:InvokeFunction',
      function: postHandler.arn,
      principal: 'apigateway.amazonaws.com',
      sourceArn: sourceArn,
    ),
  );

  aws.lambda.Permission(
    'deletePermission',
    aws.lambda.PermissionArgs(
      action: 'lambda:InvokeFunction',
      function: deleteHandler.arn,
      principal: 'apigateway.amazonaws.com',
      sourceArn: sourceArn,
    ),
  );

  pulumi.export('endpointUrl', api.apiEndpoint);
}
