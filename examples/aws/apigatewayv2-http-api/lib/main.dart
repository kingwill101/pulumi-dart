import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/iam.dart' as iam;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> endpoint;

  ExampleStack() {
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
              'Sid': '',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'lambdaRoleAttachment',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn: iam.ManagedPolicy.aWSLambdaBasicExecutionRole.value.input(),
      ),
    );

    final lambda = aws.lambda.FunctionType(
      'lambdaFunction',
      args: aws.lambda.FunctionArgs(
        code: pulumi.FileArchive('./app').input(),
        runtime: 'nodejs12.x'.input(),
        role: lambdaRole.arn,
        handler: 'index.handler'.input(),
      ),
    );

    final apigw = aws.apigatewayv2.Api(
      'httpApiGateway',
      args: aws.apigatewayv2.ApiArgs(protocolType: 'HTTP'.input()),
    );

    final sourceArn = apigw.executionArn.apply<String>((arn) => '$arn/*/*');

    aws.lambda.Permission(
      'lambdaPermission',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        principal: 'apigateway.amazonaws.com'.input(),
        function: lambda.name,
        sourceArn: sourceArn,
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [apigw, lambda]),
    );

    final integration = aws.apigatewayv2.Integration(
      'lambdaIntegration',
      args: aws.apigatewayv2.IntegrationArgs(
        apiId: apigw.id,
        integrationType: 'AWS_PROXY'.input(),
        integrationUri: lambda.arn,
        integrationMethod: 'POST'.input(),
        payloadFormatVersion: '2.0'.input(),
        passthroughBehavior: 'WHEN_NO_MATCH'.input(),
      ),
    );

    final target = integration.id.apply<String>((id) => 'integrations/$id');

    final route = aws.apigatewayv2.Route(
      'apiRoute',
      args: aws.apigatewayv2.RouteArgs(
        apiId: apigw.id,
        routeKey: r'$default'.input(),
        target: target,
      ),
    );

    final stage = aws.apigatewayv2.Stage(
      'apiStage',
      args: aws.apigatewayv2.StageArgs(
        apiId: apigw.id,
        name: 'http-api'.input(),
        routeSettings: [
          aws.apigatewayv2.StageRouteSetting(
            routeKey: route.routeKey,
            throttlingBurstLimit: 5000.input(),
            throttlingRateLimit: 10000.0.input(),
          ),
        ].input(),
        autoDeploy: true.input(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [route]),
    );

    endpoint = pulumi.Output.all<dynamic>([apigw.apiEndpoint, stage.name])
        .apply<String>(
          (values) => '${values[0] as String}/${values[1] as String}',
        );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('endpoint', endpoint)];
  }
}
