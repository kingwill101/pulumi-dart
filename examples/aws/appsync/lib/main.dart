import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

Future<void> run() async {
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
    'iam-policy',
    args: aws.iam.RolePolicyArgs(
      role: role.id,
      policy: table.arn.apply<String>((arn) {
        return jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Action': ['dynamodb:PutItem', 'dynamodb:GetItem'],
              'Resource': [arn],
            },
          ],
        });
      }),
    ),
  );

  const schema = '''
type Query {
  getTenantById(id: ID!): Tenant
}

type Mutation {
  addTenant(id: ID!, name: String!): Tenant!
}

type Tenant {
  id: ID!
  name: String
}

schema {
  query: Query
  mutation: Mutation
}
''';

  final api = aws.appsync.GraphQLApi(
    'api',
    args: aws.appsync.GraphQLApiArgs(
      authenticationType: 'API_KEY'.input(),
      schema: schema.input(),
    ),
  );

  final apiKey = aws.appsync.ApiKey(
    'key',
    args: aws.appsync.ApiKeyArgs(apiId: api.id),
  );

  final dataSource = aws.appsync.DataSource(
    'tenants-ds',
    args: aws.appsync.DataSourceArgs(
      name: 'tenantsDs'.input(),
      apiId: api.id,
      type: 'AMAZON_DYNAMODB'.input(),
      dynamodbConfig: aws.appsync.DataSourceDynamodbConfig(
        tableName: table.name,
      ).input(),
      serviceRoleArn: role.arn,
    ),
  );

  aws.appsync.Resolver(
    'get-resolver',
    args: aws.appsync.ResolverArgs(
      apiId: api.id,
      dataSource: dataSource.name,
      type: 'Query'.input(),
      field: 'getTenantById'.input(),
      requestTemplate:
          '''
{
  "version": "2017-02-28",
  "operation": "GetItem",
  "key": {
    "id": \$util.dynamodb.toDynamoDBJson(\$ctx.args.id)
  }
}
'''
              .input(),
      responseTemplate: r'$util.toJson($ctx.result)'.input(),
    ),
  );

  aws.appsync.Resolver(
    'add-resolver',
    args: aws.appsync.ResolverArgs(
      apiId: api.id,
      dataSource: dataSource.name,
      type: 'Mutation'.input(),
      field: 'addTenant'.input(),
      requestTemplate:
          '''
{
  "version": "2017-02-28",
  "operation": "PutItem",
  "key": {
    "id": \$util.dynamodb.toDynamoDBJson(\$ctx.args.id)
  },
  "attributeValues": {
    "name": \$util.dynamodb.toDynamoDBJson(\$ctx.args.name)
  }
}
'''
              .input(),
      responseTemplate: r'$util.toJson($ctx.result)'.input(),
    ),
  );

  pulumi.export(
    'endpoint',
    api.uris.apply<String>((uris) => uris['GRAPHQL'] ?? ''),
  );
  pulumi.export('key', apiKey.key);
}
