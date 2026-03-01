import 'dart:convert';

import 'package:aws/aws.dart' as aws;
import 'package:pulumi/pulumi.dart' as pulumi;

Future<void> run() async {
  final awsConfig = pulumi.Config('aws');
  final region = awsConfig.require('region');

  final counterTable = aws.dynamodb.Table(
    'counterTable',
    aws.dynamodb.TableArgs(
      billingMode: 'PAY_PER_REQUEST',
      hashKey: 'id',
      attributes: [aws.dynamodb.TableAttribute(name: 'id', type: 'S')],
    ),
  );

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
            'Sid': '',
          },
        ],
      }),
    ),
  );

  aws.iam.RolePolicy(
    'lambdaRolePolicy',
    aws.iam.RolePolicyArgs(
      role: lambdaRole.id,
      policy: counterTable.arn.apply<String>((tableArn) {
        return jsonEncode({
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
            {
              'Effect': 'Allow',
              'Action': [
                'dynamodb:GetItem',
                'dynamodb:PutItem',
                'dynamodb:UpdateItem',
              ],
              'Resource': [tableArn, '$tableArn/*'],
            },
          ],
        });
      }),
    ),
  );

  final lambdaFn = aws.lambda.FunctionType(
    'apiHandler',
    aws.lambda.FunctionArgs(
      role: lambdaRole.arn,
      runtime: 'nodejs20.x',
      handler: 'index.handler',
      code: pulumi.FileArchive('./app'),
      environment: counterTable.name.apply<aws.lambda.FunctionEnvironment>((
        tableName,
      ) {
        return aws.lambda.FunctionEnvironment(
          variables: {'TABLE_NAME': tableName},
        );
      }),
    ),
  );

  final api = aws.apigateway.RestApi(
    'api',
    aws.apigateway.RestApiArgs(
      body: lambdaFn.invokeArn.apply<String>((invokeArn) {
        return jsonEncode({
          'swagger': '2.0',
          'info': {'title': 'serverless-raw', 'version': '1.0'},
          'paths': {
            '/': {
              'get': {
                'x-amazon-apigateway-integration': {
                  'httpMethod': 'POST',
                  'type': 'aws_proxy',
                  'uri':
                      'arn:aws:apigateway:$region:lambda:path/2015-03-31/functions/$invokeArn/invocations',
                },
              },
            },
          },
        });
      }),
    ),
  );

  final deployment = aws.apigateway.DeploymentType(
    'deployment',
    aws.apigateway.DeploymentArgs(
      restApi: api.id,
      triggers: lambdaFn.arn.apply<Map<String, String>>((arn) {
        return {'redeployment': arn};
      }),
    ),
  );

  final stage = aws.apigateway.Stage(
    'stage',
    aws.apigateway.StageArgs(
      deployment: deployment.id,
      restApi: api.id,
      stageName: 'prod',
    ),
  );

  aws.lambda.Permission(
    'apigwPermission',
    aws.lambda.PermissionArgs(
      action: 'lambda:InvokeFunction',
      function: lambdaFn.arn,
      principal: 'apigateway.amazonaws.com',
      sourceArn: api.executionArn.apply<String>((executionArn) {
        return '$executionArn/*/*';
      }),
    ),
  );

  pulumi.export('endpoint', stage.invokeUrl);
}
