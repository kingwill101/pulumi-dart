import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

Future<void> run() async {
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
    'lambdaS3ReadOnlyAccess',
    args: aws.iam.RolePolicyAttachmentArgs(
      role: lambdaRole.id,
      policyArn: 'arn:aws:iam::aws:policy/AWSLambdaExecute'.input(),
    ),
  );

  aws.iam.RolePolicyAttachment(
    'lambdaBasicExecution',
    args: aws.iam.RolePolicyAttachmentArgs(
      role: lambdaRole.id,
      policyArn:
          'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole'
              .input(),
    ),
  );

  final lambda = aws.lambda.FunctionType(
    'basicLambda',
    args: aws.lambda.FunctionArgs(
      runtime: 'python3.11'.input(),
      code: pulumi.FileArchive('./app').input(),
      handler: 'index.handler'.input(),
      role: lambdaRole.arn,
      timeout: 30.input(),
    ),
  );

  final restApi = aws.apigateway.RestApi(
    'websiteApi',
    args: aws.apigateway.RestApiArgs(
      body: lambda.invokeArn.apply<String>((invokeArn) {
        return jsonEncode({
          'openapi': '3.0.1',
          'info': {'title': 'websiteApi', 'version': '1.0'},
          'paths': {
            '/': {
              'x-amazon-apigateway-any-method': {
                'x-amazon-apigateway-integration': {
                  'uri':
                      'arn:aws:apigateway:\${region}:lambda:path/2015-03-31/functions/$invokeArn/invocations',
                  'passthroughBehavior': 'when_no_match',
                  'httpMethod': 'POST',
                  'type': 'aws_proxy',
                },
              },
            },
            '/{proxy+}': {
              'x-amazon-apigateway-any-method': {
                'x-amazon-apigateway-integration': {
                  'uri':
                      'arn:aws:apigateway:\${region}:lambda:path/2015-03-31/functions/$invokeArn/invocations',
                  'passthroughBehavior': 'when_no_match',
                  'httpMethod': 'POST',
                  'type': 'aws_proxy',
                },
              },
            },
          },
          'components': {},
        });
      }),
    ),
  );

  final deployment = aws.apigateway.DeploymentType(
    'websiteApiDeployment',
    args: aws.apigateway.DeploymentArgs(restApi: restApi.id),
  );

  final prodStage = aws.apigateway.Stage(
    'websiteApiProd',
    args: aws.apigateway.StageArgs(
      restApi: restApi.id,
      deployment: deployment.id,
      stageName: 'Prod'.input(),
    ),
  );

  aws.lambda.Permission(
    'lambdaPermission',
    args: aws.lambda.PermissionArgs(
      action: 'lambda:InvokeFunction'.input(),
      function: lambda.arn,
      principal: 'apigateway.amazonaws.com'.input(),
      sourceArn: restApi.executionArn.apply<String>((arn) => '$arn/*/*'),
      statementIdPrefix: 'lambdaPermission'.input(),
    ),
  );

  pulumi.export('websiteUrl', prodStage.invokeUrl.apply<String>((url) => '$url/'));
}
