import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ApiGatewayStack extends pulumi.Stack {
  late final pulumi.Output<String> endpoint;

  ApiGatewayStack() {
    final counterTable = aws.dynamodb.Table(
      'counterTable',
      args: aws.dynamodb.TableArgs(
        hashKey: 'id'.input(),
        readCapacity: 5.input(),
        writeCapacity: 5.input(),
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
        }).input(),
      ),
    );

    final environment = aws.lambda.FunctionEnvironment(
      variables: counterTable.name
          .apply<Map<String, String>>((tableName) => {'TABLE_NAME': tableName})
          .input(),
    );

    final getHandler = aws.lambda.FunctionType(
      'getHandler',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'python3.11'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./app').input(),
        environment: environment.input(),
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
        }).input(),
      ),
    );

    final deployment = aws.apigateway.DeploymentType(
      'deployment',
      args: aws.apigateway.DeploymentArgs(
        restApi: api.id,
        triggers: getHandler.arn
            .apply<Map<String, String>>((arn) => {'redeployment': arn})
            .input(),
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
        sourceArn: api.executionArn
            .apply<String>((executionArn) => '$executionArn/*/*')
            .input(),
      ),
    );

    endpoint = stage.invokeUrl;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('endpoint', endpoint)];
  }
}
