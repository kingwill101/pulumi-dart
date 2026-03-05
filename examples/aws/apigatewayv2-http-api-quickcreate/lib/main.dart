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
        policyArn: iam.ManagedPolicy.aWSLambdaBasicExecutionRole.wireValue
            .input(),
      ),
    );

    final lambdaFunction = aws.lambda.FunctionType(
      'lambdaFunction',
      args: aws.lambda.FunctionArgs(
        code: pulumi.FileArchive('./app').input(),
        runtime: 'nodejs12.x'.input(),
        role: lambdaRole.arn,
        handler: 'index.handler'.input(),
      ),
    );

    aws.lambda.Permission(
      'lambdaPermission',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        principal: 'apigateway.amazonaws.com'.input(),
        function: lambdaFunction.name,
      ),
    );

    final apigw = aws.apigatewayv2.Api(
      'httpApiGateway',
      args: aws.apigatewayv2.ApiArgs(
        protocolType: 'HTTP'.input(),
        routeKey: 'GET /'.input(),
        target: lambdaFunction.invokeArn,
      ),
    );

    endpoint = apigw.apiEndpoint;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('endpoint', endpoint)];
  }
}
