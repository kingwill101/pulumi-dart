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
      args: aws.s3.BucketArgs(forceDestroy: isDev.input()),
    );
    final queryResultsBucket = aws.s3.Bucket(
      'analytics-query-results-bucket',
      args: aws.s3.BucketArgs(forceDestroy: isDev.input()),
    );

    final db = aws.glue.CatalogDatabase(
      'analytics_dw',
      args: aws.glue.CatalogDatabaseArgs(name: 'analytics_dw'.input()),
    );

    final impressionsInput = aws.kinesis.Stream(
      'impressions-input-stream',
      args: aws.kinesis.StreamArgs(
        name: 'impressions-input'.input(),
        shardCount: 1.input(),
      ),
    );
    final clicksInput = aws.kinesis.Stream(
      'clicks-input-stream',
      args: aws.kinesis.StreamArgs(
        name: 'clicks-input'.input(),
        shardCount: 1.input(),
      ),
    );

    aws.s3.BucketObject(
      'factsFile',
      args: aws.s3.BucketObjectArgs(
        bucket: dataWarehouseBucket.bucket,
        key: 'facts/facts.json'.input(),
        content:
            '{"thing":"sky","color":"blue"}\n{"thing":"seattle sky","color":"grey"}\n{"thing":"oranges","color":"orange"}\n'
                .input(),
        contentType: 'application/json'.input(),
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
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'aggregate-role-basic',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: aggregateRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole'
                .input(),
      ),
    );
    aws.iam.RolePolicyAttachment(
      'aggregate-role-athena',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: aggregateRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AmazonAthenaFullAccess'.input(),
      ),
    );
    aws.iam.RolePolicyAttachment(
      'aggregate-role-s3',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: aggregateRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AmazonS3FullAccess'.input(),
      ),
    );

    final aggregateFn = aws.lambda.FunctionType(
      'aggregate-job',
      args: aws.lambda.FunctionArgs(
        role: aggregateRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./lambda/aggregate').input(),
        timeout: 60.input(),
        environment: aws.lambda
            .FunctionEnvironment(
              variables:
                  pulumi.Output.all([
                    db.name,
                    queryResultsBucket.bucket,
                    dataWarehouseBucket.bucket,
                  ]).apply<Map<String, String>>((values) {
                    final databaseName = values[0];
                    final resultsBucket = values[1];
                    final dataBucket = values[2];
                    return {
                      'DATABASE_NAME': databaseName,
                      'IMPRESSIONS_TABLE': 'impressions',
                      'CLICKS_TABLE': 'clicks',
                      'RESULTS_BUCKET': resultsBucket,
                      'DW_BUCKET': dataBucket,
                      'AGGREGATE_TABLE': 'aggregates',
                    };
                  }).input(),
            )
            .input(),
      ),
    );

    final aggregateRule = aws.cloudwatch.EventRule(
      'aggregate-schedule',
      args: aws.cloudwatch.EventRuleArgs(
        scheduleExpression: scheduleExpression.input(),
      ),
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
        action: 'lambda:InvokeFunction'.input(),
        function: aggregateFn.name,
        principal: 'events.amazonaws.com'.input(),
        sourceArn: aggregateRule.arn,
      ),
    );

    impressionInputStream = impressionsInput.name;
    clickInputStream = clicksInput.name;
    databaseName = db.name;
    impressionTableName = pulumi.Output.create('impressions');
    clickTableName = pulumi.Output.create('clicks');
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
