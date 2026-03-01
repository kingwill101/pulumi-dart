import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ServerlessDataWarehouseStack extends pulumi.Stack {
  late final pulumi.Output<String> impressionInputStream;
  late final pulumi.Output<String> clickInputStream;
  late final pulumi.Output<String> databaseName;
  late final pulumi.Output<String> impressionTableName;
  late final pulumi.Output<String> clickTableName;
  late final pulumi.Output<String> athenaResultsBucket;

  ServerlessDataWarehouseStack() {
    final config = pulumi.Config();
    final isDev = config.get('dev') == 'true';
    final scheduleExpression = isDev ? 'rate(1 minute)' : 'rate(1 hour)';

    final dataWarehouseBucket = aws.s3.Bucket(
      'analytics-dw-bucket',
      args: aws.s3.BucketArgs(forceDestroy: isDev),
    );
    final queryResultsBucket = aws.s3.Bucket(
      'analytics-query-results-bucket',
      args: aws.s3.BucketArgs(forceDestroy: isDev),
    );

    final db = aws.glue.CatalogDatabase(
      'analytics_dw',
      args: aws.glue.CatalogDatabaseArgs(name: 'analytics_dw'),
    );

    final impressionsInput = aws.kinesis.Stream(
      'impressions-input-stream',
      args: aws.kinesis.StreamArgs(name: 'impressions-input', shardCount: 1),
    );
    final clicksInput = aws.kinesis.Stream(
      'clicks-input-stream',
      args: aws.kinesis.StreamArgs(name: 'clicks-input', shardCount: 1),
    );

    aws.s3.BucketObject(
      'factsFile',
      args: aws.s3.BucketObjectArgs(
        bucket: dataWarehouseBucket.bucket,
        key: 'facts/facts.json',
        content:
            '{"thing":"sky","color":"blue"}\n{"thing":"seattle sky","color":"grey"}\n{"thing":"oranges","color":"orange"}\n',
        contentType: 'application/json',
      ),
    );

    final aggregateRole = aws.iam.Role(
      'aggregate-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'lambda.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'aggregate-role-basic',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: aggregateRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole',
      ),
    );
    aws.iam.RolePolicyAttachment(
      'aggregate-role-athena',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: aggregateRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AmazonAthenaFullAccess',
      ),
    );
    aws.iam.RolePolicyAttachment(
      'aggregate-role-s3',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: aggregateRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AmazonS3FullAccess',
      ),
    );

    final aggregateFn = aws.lambda.FunctionType(
      'aggregate-job',
      args: aws.lambda.FunctionArgs(
        role: aggregateRole.arn,
        runtime: aws.lambda.Runtime.nodeJS20dX.value,
        handler: 'index.handler',
        code: pulumi.FileArchive('./lambda/aggregate'),
        timeout: 60,
        environment: aws.lambda.FunctionEnvironment(
          variables: {
            'DATABASE_NAME': db.name,
            'IMPRESSIONS_TABLE': 'impressions',
            'CLICKS_TABLE': 'clicks',
            'RESULTS_BUCKET': queryResultsBucket.bucket,
            'DW_BUCKET': dataWarehouseBucket.bucket,
            'AGGREGATE_TABLE': 'aggregates',
          },
        ).output(),
      ),
    );

    final aggregateRule = aws.cloudwatch.EventRule(
      'aggregate-schedule',
      args: aws.cloudwatch.EventRuleArgs(scheduleExpression: scheduleExpression),
    );
    aws.cloudwatch.EventTarget(
      'aggregate-target',
      args: aws.cloudwatch.EventTargetArgs(
        rule: aggregateRule.name,
        arn: aggregateFn.arn,
      ),
    );
    aws.lambda.Permission(
      'allow-events-aggregate',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction',
        function: aggregateFn.name,
        principal: 'events.amazonaws.com',
        sourceArn: aggregateRule.arn,
      ),
    );

    impressionInputStream = impressionsInput.name;
    clickInputStream = clicksInput.name;
    databaseName = db.name;
    impressionTableName = 'impressions'.output();
    clickTableName = 'clicks'.output();
    athenaResultsBucket = queryResultsBucket.bucket;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('impressionInputStream', impressionInputStream),
      pulumi.OutputProperty('clickInputStream', clickInputStream),
      pulumi.OutputProperty('databaseName', databaseName),
      pulumi.OutputProperty('impressionTableName', impressionTableName),
      pulumi.OutputProperty('clickTableName', clickTableName),
      pulumi.OutputProperty('athenaResultsBucket', athenaResultsBucket),
    ];
  }
}
