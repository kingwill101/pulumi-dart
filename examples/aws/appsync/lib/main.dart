import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class AppsyncStack extends pulumi.Stack {
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<String> key;

  AppsyncStack() {
    final schema = r'''
type Tenant {
  id: ID!
  name: String
}
type Query {
  getTenant(id: ID!): Tenant
}
type Mutation {
  putTenant(id: ID!, name: String): Tenant
}
schema {
  query: Query
  mutation: Mutation
}
''';

    final table = aws.dynamodb.Table(
      'tenants',
      args: aws.dynamodb.TableArgs(
        hashKey: 'id'.input(),
        attributes: [
          aws.dynamodb.TableAttribute(name: 'id'.input(), type: 'S'.input()),
        ].input(),
        readCapacity: 1.input(),
        writeCapacity: 1.input(),
      ),
    );

    final role = aws.iam.Role(
      'iam-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Effect': 'Allow',
              'Principal': {'Service': 'appsync.amazonaws.com'},
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicy(
      'accessDynamoDB',
      args: aws.iam.RolePolicyArgs(
        role: role.id,
        policy: table.arn.apply<String>((arn) {
          return jsonEncode({
            'Version': '2012-10-17',
            'Statement': [
              {
                'Effect': 'Allow',
                'Action': ['dynamodb:GetItem', 'dynamodb:PutItem'],
                'Resource': [arn, '$arn/*'],
              },
            ],
          });
        }).input(),
      ),
    );

    final api = aws.appsync.GraphQLApi(
      'api',
      args: aws.appsync.GraphQLApiArgs(
        name: 'api'.input(),
        authenticationType: 'API_KEY'.input(),
        schema: schema.input(),
        logConfig: aws.appsync
            .GraphQLApiLogConfig(
              fieldLogLevel: 'ALL'.input(),
              cloudwatchLogsRoleArn: role.arn,
            )
            .input(),
      ),
    );

    final apiKey = aws.appsync.ApiKey(
      'api-key',
      args: aws.appsync.ApiKeyArgs(
        apiId: api.id,
        expires: '2022-05-20T00:00:00Z'.input(),
      ),
    );

    final dataSource = aws.appsync.DataSource(
      'dynamoDB',
      args: aws.appsync.DataSourceArgs(
        apiId: api.id,
        name: 'dynamoDB'.input(),
        type: 'AMAZON_DYNAMODB'.input(),
        dynamodbConfig: aws.appsync
            .DataSourceDynamodbConfig(
              tableName: table.name,
              region: 'us-east-1'.input(),
            )
            .input(),
        serviceRoleArn: role.arn,
      ),
    );

    aws.appsync.Resolver(
      'Query_getTenant',
      args: aws.appsync.ResolverArgs(
        apiId: api.id,
        type: 'Query'.input(),
        field: 'getTenant'.input(),
        dataSource: dataSource.name,
        requestTemplate:
            r'''
{
  "version": "2017-02-28",
  "operation": "GetItem",
  "key": {
    "id": $util.dynamodb.toDynamoDBJson($ctx.args.id)
  }
}
'''
                .input(),
        responseTemplate: r'$util.toJson($ctx.result)'.input(),
      ),
    );

    aws.appsync.Resolver(
      'Mutation_putTenant',
      args: aws.appsync.ResolverArgs(
        apiId: api.id,
        type: 'Mutation'.input(),
        field: 'putTenant'.input(),
        dataSource: dataSource.name,
        requestTemplate:
            r'''
{
  "version": "2017-02-28",
  "operation": "PutItem",
  "key": {
    "id": $util.dynamodb.toDynamoDBJson($ctx.args.id)
  },
  "attributeValues": {
    "name": $util.dynamodb.toDynamoDBJson($ctx.args.name)
  }
}
'''
                .input(),
        responseTemplate: r'$util.toJson($ctx.result)'.input(),
      ),
    );

    endpoint = api.uris.apply<String>((uris) => uris['GRAPHQL']);
    key = apiKey.key;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('endpoint', endpoint),
      pulumi.OutputProperty('key', key),
    ];
  }
}
