import 'dart:convert';

import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessRawStack extends pulumi.Stack {
  late final pulumi.Output<String> endpoint;

  ServerlessRawStack() {
    final awsConfig = pulumi.Config('aws');
    final region = awsConfig.require('region');

    final counterTable = aws.dynamodb.Table(
      'counterTable',
      args: aws.dynamodb.TableArgs(
        billingMode: 'PAY_PER_REQUEST'.input(),
        hashKey: 'id'.input(),
        attributes: [
          aws.dynamodb.TableAttribute(name: 'id'.input(), type: 'S'.input()),
        ].input(),
      ),
    );

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

    aws.iam.RolePolicy(
      'lambdaRolePolicy',
      args: aws.iam.RolePolicyArgs(
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
                'Resource': [tableArn, '$tableArn/*'].input(),
              },
            ],
          });
        }).input(),
      ),
    );

    final lambdaFn = aws.lambda.FunctionType(
      'apiHandler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./app').input(),
        environment: counterTable.name.apply((String tableName) {
          return aws.lambda.FunctionEnvironment(
            variables: {'TABLE_NAME': tableName}.input(),
          );
        }),
      ),
    );

    final api = aws.apigateway.RestApi(
      'api',
      args: aws.apigateway.RestApiArgs(
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
        }).input(),
      ),
    );

    final deployment = aws.apigateway.DeploymentType(
      'deployment',
      args: aws.apigateway.DeploymentArgs(
        restApi: api.id,
        triggers: lambdaFn.arn.apply<Map<String, String>>((arn) {
          return {'redeployment': arn};
        }).input(),
      ),
    );

    final stage = aws.apigateway.Stage(
      'stage',
      args: aws.apigateway.StageArgs(
        deployment: deployment.id,
        restApi: api.id,
        stageName: 'prod'.input(),
      ),
    );

    aws.lambda.Permission(
      'apigwPermission',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        function: lambdaFn.arn,
        principal: 'apigateway.amazonaws.com'.input(),
        sourceArn: api.executionArn.apply<String>((executionArn) {
          return '$executionArn/*/*';
        }).input(),
      ),
    );

    endpoint = stage.invokeUrl;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('endpoint', endpoint)];
  }
}
