import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

Future<void> run() async {
  final counterTable = aws.dynamodb.Table(
    'counterTable',
    args: aws.dynamodb.TableArgs(
      hashKey: 'id'.input(),
      readCapacity: 5.input(),
      writeCapacity: 5.input(),
      attributes: [
        aws.dynamodb.TableAttribute(
          name: 'id'.input(),
          type: 'S'.input(),
        ),
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

  aws.iam.RolePolicy(
    'lambdaDynamoPolicy',
    args: aws.iam.RolePolicyArgs(
      role: lambdaRole.id,
      policy: counterTable.arn.apply<String>((tableArn) {
        return jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
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

  final getHandler = aws.lambda.FunctionType(
    'getHandler',
    args: aws.lambda.FunctionArgs(
      role: lambdaRole.arn,
      runtime: 'python3.11'.input(),
      handler: 'index.handler'.input(),
      code: pulumi.FileArchive('./app').input(),
      environment: counterTable.name.apply<aws.lambda.FunctionEnvironment>((
        tableName,
      ) {
        return aws.lambda.FunctionEnvironment(
          variables: {'TABLE_NAME': tableName}.input(),
        );
      }),
    ),
  );

  final api = aws.apigateway.RestApi(
    'api',
    args: aws.apigateway.RestApiArgs(
      body: getHandler.invokeArn.apply<String>((invokeArn) {
        return jsonEncode({
          'swagger': '2.0',
          'info': {'title': 'count-api', 'version': '1.0'},
          'paths': {
            '/{route+}': {
              'get': {
                'parameters': [
                  {
                    'name': 'route',
                    'in': 'path',
                    'required': true,
                    'type': 'string',
                  },
                ],
                'x-amazon-apigateway-integration': {
                  'httpMethod': 'POST',
                  'type': 'aws_proxy',
                  'uri':
                      'arn:aws:apigateway:\${region}:lambda:path/2015-03-31/functions/$invokeArn/invocations',
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
    args: aws.apigateway.DeploymentArgs(
      restApi: api.id,
      triggers: getHandler.arn.apply<Map<String, String>>((arn) {
        return {'redeployment': arn};
      }),
    ),
  );

  final stage = aws.apigateway.Stage(
    'stage',
    args: aws.apigateway.StageArgs(
      deployment: deployment.id,
      restApi: api.id,
      stageName: 'stage'.input(),
    ),
  );

  aws.lambda.Permission(
    'apigwPermission',
    args: aws.lambda.PermissionArgs(
      action: 'lambda:InvokeFunction'.input(),
      function: getHandler.arn,
      principal: 'apigateway.amazonaws.com'.input(),
      sourceArn: api.executionArn.apply<String>((executionArn) {
        return '$executionArn/*/*';
      }),
    ),
  );

  pulumi.export('endpoint', stage.invokeUrl);
}
