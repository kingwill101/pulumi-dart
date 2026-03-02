import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ApiGatewayLambdaServerlessStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  ApiGatewayLambdaServerlessStack() {
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

    final getHandler = aws.lambda.FunctionType(
      'getHandler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./app/get').input(),
      ),
    );

    final postHandler = aws.lambda.FunctionType(
      'postHandler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./app/post').input(),
      ),
    );

    final deleteHandler = aws.lambda.FunctionType(
      'deleteHandler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./app/delete').input(),
      ),
    );

    final api = aws.apigatewayv2.Api(
      'hello-world',
      args: aws.apigatewayv2.ApiArgs(
        name: 'hello-world'.input(),
        protocolType: 'HTTP'.input(),
      ),
    );

    final getIntegration = aws.apigatewayv2.Integration(
      'getIntegration',
      args: aws.apigatewayv2.IntegrationArgs(
        apiId: api.id,
        integrationType: 'AWS_PROXY'.input(),
        integrationUri: getHandler.invokeArn,
        integrationMethod: 'POST'.input(),
        payloadFormatVersion: '2.0'.input(),
      ),
    );

    final postIntegration = aws.apigatewayv2.Integration(
      'postIntegration',
      args: aws.apigatewayv2.IntegrationArgs(
        apiId: api.id,
        integrationType: 'AWS_PROXY'.input(),
        integrationUri: postHandler.invokeArn,
        integrationMethod: 'POST'.input(),
        payloadFormatVersion: '2.0'.input(),
      ),
    );

    final deleteIntegration = aws.apigatewayv2.Integration(
      'deleteIntegration',
      args: aws.apigatewayv2.IntegrationArgs(
        apiId: api.id,
        integrationType: 'AWS_PROXY'.input(),
        integrationUri: deleteHandler.invokeArn,
        integrationMethod: 'POST'.input(),
        payloadFormatVersion: '2.0'.input(),
      ),
    );

    aws.apigatewayv2.Route(
      'getRoute',
      args: aws.apigatewayv2.RouteArgs(
        apiId: api.id,
        routeKey: 'GET /{route+}'.input(),
        target: getIntegration.id.apply<String>((id) => 'integrations/$id'),
      ),
    );

    aws.apigatewayv2.Route(
      'postRoute',
      args: aws.apigatewayv2.RouteArgs(
        apiId: api.id,
        routeKey: 'POST /{route+}'.input(),
        target: postIntegration.id.apply<String>((id) => 'integrations/$id'),
      ),
    );

    aws.apigatewayv2.Route(
      'deleteRoute',
      args: aws.apigatewayv2.RouteArgs(
        apiId: api.id,
        routeKey: 'DELETE /{route+}'.input(),
        target: deleteIntegration.id.apply<String>((id) => 'integrations/$id'),
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

    final sourceArn = api.executionArn.apply<String>((arn) => '$arn/*/*');

    aws.lambda.Permission(
      'getPermission',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        function: getHandler.arn,
        principal: 'apigateway.amazonaws.com'.input(),
        sourceArn: sourceArn,
      ),
    );

    aws.lambda.Permission(
      'postPermission',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        function: postHandler.arn,
        principal: 'apigateway.amazonaws.com'.input(),
        sourceArn: sourceArn,
      ),
    );

    aws.lambda.Permission(
      'deletePermission',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        function: deleteHandler.arn,
        principal: 'apigateway.amazonaws.com'.input(),
        sourceArn: sourceArn,
      ),
    );

    url = api.apiEndpoint;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('endpointUrl', url)];
  }
}
