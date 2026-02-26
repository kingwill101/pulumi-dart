import 'package:pulumi/pulumi.dart';
import '../scheduled_query_error_report_configuration/scheduled_query_error_report_configuration.dart';
import '../scheduled_query_last_run_summary/scheduled_query_last_run_summary.dart';
import '../scheduled_query_notification_configuration/scheduled_query_notification_configuration.dart';
import '../scheduled_query_recently_failed_run/scheduled_query_recently_failed_run.dart';
import '../scheduled_query_schedule_configuration/scheduled_query_schedule_configuration.dart';
import '../scheduled_query_target_configuration/scheduled_query_target_configuration.dart';
import '../scheduled_query_timeouts/scheduled_query_timeouts.dart';
import 'scheduled_query_args.dart';

/// Resource for managing an AWS Timestream Query Scheduled Query.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// Before creating a scheduled query, you must have a source database and table with ingested data. Below is a multi-step example, providing an opportunity for data ingestion.
///
/// If your infrastructure is already set up—including the source database and table with data, results database and table, error report S3 bucket, SNS topic, and IAM role—you can create a scheduled query as follows:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.timestreamquery.ScheduledQuery("example", {
/// executionRoleArn: exampleAwsIamRole.arn,
/// name: exampleAwsTimestreamwriteTable.tableName,
/// queryString: `SELECT region, az, hostname, BIN(time, 15s) AS binned_timestamp,
/// \\tROUND(AVG(cpu_utilization), 2) AS avg_cpu_utilization,
/// \\tROUND(APPROX_PERCENTILE(cpu_utilization, 0.9), 2) AS p90_cpu_utilization,
/// \\tROUND(APPROX_PERCENTILE(cpu_utilization, 0.95), 2) AS p95_cpu_utilization,
/// \\tROUND(APPROX_PERCENTILE(cpu_utilization, 0.99), 2) AS p99_cpu_utilization
/// FROM exampledatabase.exampletable
/// WHERE measure_name = 'metrics' AND time > ago(2h)
/// GROUP BY region, hostname, az, BIN(time, 15s)
/// ORDER BY binned_timestamp ASC
/// LIMIT 5
/// `,
/// errorReportConfiguration: {
/// s3Configuration: {
/// bucketName: exampleAwsS3Bucket.bucket,
/// },
/// },
/// notificationConfiguration: {
/// snsConfiguration: {
/// topicArn: exampleAwsSnsTopic.arn,
/// },
/// },
/// scheduleConfiguration: {
/// scheduleExpression: "rate(1 hour)",
/// },
/// targetConfiguration: {
/// timestreamConfiguration: {
/// databaseName: results.databaseName,
/// tableName: resultsAwsTimestreamwriteTable.tableName,
/// timeColumn: "binned_timestamp",
/// dimensionMappings: [
/// {
/// dimensionValueType: "VARCHAR",
/// name: "az",
/// },
/// {
/// dimensionValueType: "VARCHAR",
/// name: "region",
/// },
/// {
/// dimensionValueType: "VARCHAR",
/// name: "hostname",
/// },
/// ],
/// multiMeasureMappings: {
/// targetMultiMeasureName: "multi-metrics",
/// multiMeasureAttributeMappings: [
/// {
/// measureValueType: "DOUBLE",
/// sourceColumn: "avg_cpu_utilization",
/// },
/// {
/// measureValueType: "DOUBLE",
/// sourceColumn: "p90_cpu_utilization",
/// },
/// {
/// measureValueType: "DOUBLE",
/// sourceColumn: "p95_cpu_utilization",
/// },
/// {
/// measureValueType: "DOUBLE",
/// sourceColumn: "p99_cpu_utilization",
/// },
/// ],
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreamquery.ScheduledQuery("example",
/// execution_role_arn=example_aws_iam_role["arn"],
/// name=example_aws_timestreamwrite_table["tableName"],
/// query_string="""SELECT region, az, hostname, BIN(time, 15s) AS binned_timestamp,
/// \tROUND(AVG(cpu_utilization), 2) AS avg_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.9), 2) AS p90_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.95), 2) AS p95_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.99), 2) AS p99_cpu_utilization
/// FROM exampledatabase.exampletable
/// WHERE measure_name = 'metrics' AND time > ago(2h)
/// GROUP BY region, hostname, az, BIN(time, 15s)
/// ORDER BY binned_timestamp ASC
/// LIMIT 5
/// """,
/// error_report_configuration={
/// "s3_configuration": {
/// "bucket_name": example_aws_s3_bucket["bucket"],
/// },
/// },
/// notification_configuration={
/// "sns_configuration": {
/// "topic_arn": example_aws_sns_topic["arn"],
/// },
/// },
/// schedule_configuration={
/// "schedule_expression": "rate(1 hour)",
/// },
/// target_configuration={
/// "timestream_configuration": {
/// "database_name": results["databaseName"],
/// "table_name": results_aws_timestreamwrite_table["tableName"],
/// "time_column": "binned_timestamp",
/// "dimension_mappings": [
/// {
/// "dimension_value_type": "VARCHAR",
/// "name": "az",
/// },
/// {
/// "dimension_value_type": "VARCHAR",
/// "name": "region",
/// },
/// {
/// "dimension_value_type": "VARCHAR",
/// "name": "hostname",
/// },
/// ],
/// "multi_measure_mappings": {
/// "target_multi_measure_name": "multi-metrics",
/// "multi_measure_attribute_mappings": [
/// {
/// "measure_value_type": "DOUBLE",
/// "source_column": "avg_cpu_utilization",
/// },
/// {
/// "measure_value_type": "DOUBLE",
/// "source_column": "p90_cpu_utilization",
/// },
/// {
/// "measure_value_type": "DOUBLE",
/// "source_column": "p95_cpu_utilization",
/// },
/// {
/// "measure_value_type": "DOUBLE",
/// "source_column": "p99_cpu_utilization",
/// },
/// ],
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.TimestreamQuery.ScheduledQuery("example", new()
/// {
/// ExecutionRoleArn = exampleAwsIamRole.Arn,
/// Name = exampleAwsTimestreamwriteTable.TableName,
/// QueryString = @"SELECT region, az, hostname, BIN(time, 15s) AS binned_timestamp,
/// \tROUND(AVG(cpu_utilization), 2) AS avg_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.9), 2) AS p90_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.95), 2) AS p95_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.99), 2) AS p99_cpu_utilization
/// FROM exampledatabase.exampletable
/// WHERE measure_name = 'metrics' AND time > ago(2h)
/// GROUP BY region, hostname, az, BIN(time, 15s)
/// ORDER BY binned_timestamp ASC
/// LIMIT 5
/// ",
/// ErrorReportConfiguration = new Aws.TimestreamQuery.Inputs.ScheduledQueryErrorReportConfigurationArgs
/// {
/// S3Configuration = new Aws.TimestreamQuery.Inputs.ScheduledQueryErrorReportConfigurationS3ConfigurationArgs
/// {
/// BucketName = exampleAwsS3Bucket.Bucket,
/// },
/// },
/// NotificationConfiguration = new Aws.TimestreamQuery.Inputs.ScheduledQueryNotificationConfigurationArgs
/// {
/// SnsConfiguration = new Aws.TimestreamQuery.Inputs.ScheduledQueryNotificationConfigurationSnsConfigurationArgs
/// {
/// TopicArn = exampleAwsSnsTopic.Arn,
/// },
/// },
/// ScheduleConfiguration = new Aws.TimestreamQuery.Inputs.ScheduledQueryScheduleConfigurationArgs
/// {
/// ScheduleExpression = "rate(1 hour)",
/// },
/// TargetConfiguration = new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationArgs
/// {
/// TimestreamConfiguration = new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationArgs
/// {
/// DatabaseName = results.DatabaseName,
/// TableName = resultsAwsTimestreamwriteTable.TableName,
/// TimeColumn = "binned_timestamp",
/// DimensionMappings = new[]
/// {
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs
/// {
/// DimensionValueType = "VARCHAR",
/// Name = "az",
/// },
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs
/// {
/// DimensionValueType = "VARCHAR",
/// Name = "region",
/// },
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs
/// {
/// DimensionValueType = "VARCHAR",
/// Name = "hostname",
/// },
/// },
/// MultiMeasureMappings = new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsArgs
/// {
/// TargetMultiMeasureName = "multi-metrics",
/// MultiMeasureAttributeMappings = new[]
/// {
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs
/// {
/// MeasureValueType = "DOUBLE",
/// SourceColumn = "avg_cpu_utilization",
/// },
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs
/// {
/// MeasureValueType = "DOUBLE",
/// SourceColumn = "p90_cpu_utilization",
/// },
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs
/// {
/// MeasureValueType = "DOUBLE",
/// SourceColumn = "p95_cpu_utilization",
/// },
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs
/// {
/// MeasureValueType = "DOUBLE",
/// SourceColumn = "p99_cpu_utilization",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := timestreamquery.NewScheduledQuery(ctx, "example", &timestreamquery.ScheduledQueryArgs{
/// ExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Name:             pulumi.Any(exampleAwsTimestreamwriteTable.TableName),
/// QueryString: pulumi.String(`SELECT region, az, hostname, BIN(time, 15s) AS binned_timestamp,
/// \tROUND(AVG(cpu_utilization), 2) AS avg_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.9), 2) AS p90_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.95), 2) AS p95_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.99), 2) AS p99_cpu_utilization
/// FROM exampledatabase.exampletable
/// WHERE measure_name = 'metrics' AND time > ago(2h)
/// GROUP BY region, hostname, az, BIN(time, 15s)
/// ORDER BY binned_timestamp ASC
/// LIMIT 5
/// `),
/// ErrorReportConfiguration: &timestreamquery.ScheduledQueryErrorReportConfigurationArgs{
/// S3Configuration: &timestreamquery.ScheduledQueryErrorReportConfigurationS3ConfigurationArgs{
/// BucketName: pulumi.Any(exampleAwsS3Bucket.Bucket),
/// },
/// },
/// NotificationConfiguration: &timestreamquery.ScheduledQueryNotificationConfigurationArgs{
/// SnsConfiguration: &timestreamquery.ScheduledQueryNotificationConfigurationSnsConfigurationArgs{
/// TopicArn: pulumi.Any(exampleAwsSnsTopic.Arn),
/// },
/// },
/// ScheduleConfiguration: &timestreamquery.ScheduledQueryScheduleConfigurationArgs{
/// ScheduleExpression: pulumi.String("rate(1 hour)"),
/// },
/// TargetConfiguration: &timestreamquery.ScheduledQueryTargetConfigurationArgs{
/// TimestreamConfiguration: &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationArgs{
/// DatabaseName: pulumi.Any(results.DatabaseName),
/// TableName:    pulumi.Any(resultsAwsTimestreamwriteTable.TableName),
/// TimeColumn:   pulumi.String("binned_timestamp"),
/// DimensionMappings: timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArray{
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs{
/// DimensionValueType: pulumi.String("VARCHAR"),
/// Name:               pulumi.String("az"),
/// },
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs{
/// DimensionValueType: pulumi.String("VARCHAR"),
/// Name:               pulumi.String("region"),
/// },
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs{
/// DimensionValueType: pulumi.String("VARCHAR"),
/// Name:               pulumi.String("hostname"),
/// },
/// },
/// MultiMeasureMappings: &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsArgs{
/// TargetMultiMeasureName: pulumi.String("multi-metrics"),
/// MultiMeasureAttributeMappings: timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArray{
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs{
/// MeasureValueType: pulumi.String("DOUBLE"),
/// SourceColumn:     pulumi.String("avg_cpu_utilization"),
/// },
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs{
/// MeasureValueType: pulumi.String("DOUBLE"),
/// SourceColumn:     pulumi.String("p90_cpu_utilization"),
/// },
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs{
/// MeasureValueType: pulumi.String("DOUBLE"),
/// SourceColumn:     pulumi.String("p95_cpu_utilization"),
/// },
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs{
/// MeasureValueType: pulumi.String("DOUBLE"),
/// SourceColumn:     pulumi.String("p99_cpu_utilization"),
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.timestreamquery.ScheduledQuery;
/// import com.pulumi.aws.timestreamquery.ScheduledQueryArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryErrorReportConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryErrorReportConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryNotificationConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryNotificationConfigurationSnsConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryScheduleConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryTargetConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ScheduledQuery("example", ScheduledQueryArgs.builder()
/// .executionRoleArn(exampleAwsIamRole.arn())
/// .name(exampleAwsTimestreamwriteTable.tableName())
/// .queryString("""
/// SELECT region, az, hostname, BIN(time, 15s) AS binned_timestamp,
/// \tROUND(AVG(cpu_utilization), 2) AS avg_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.9), 2) AS p90_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.95), 2) AS p95_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.99), 2) AS p99_cpu_utilization
/// FROM exampledatabase.exampletable
/// WHERE measure_name = 'metrics' AND time > ago(2h)
/// GROUP BY region, hostname, az, BIN(time, 15s)
/// ORDER BY binned_timestamp ASC
/// LIMIT 5
/// """)
/// .errorReportConfiguration(ScheduledQueryErrorReportConfigurationArgs.builder()
/// .s3Configuration(ScheduledQueryErrorReportConfigurationS3ConfigurationArgs.builder()
/// .bucketName(exampleAwsS3Bucket.bucket())
/// .build())
/// .build())
/// .notificationConfiguration(ScheduledQueryNotificationConfigurationArgs.builder()
/// .snsConfiguration(ScheduledQueryNotificationConfigurationSnsConfigurationArgs.builder()
/// .topicArn(exampleAwsSnsTopic.arn())
/// .build())
/// .build())
/// .scheduleConfiguration(ScheduledQueryScheduleConfigurationArgs.builder()
/// .scheduleExpression("rate(1 hour)")
/// .build())
/// .targetConfiguration(ScheduledQueryTargetConfigurationArgs.builder()
/// .timestreamConfiguration(ScheduledQueryTargetConfigurationTimestreamConfigurationArgs.builder()
/// .databaseName(results.databaseName())
/// .tableName(resultsAwsTimestreamwriteTable.tableName())
/// .timeColumn("binned_timestamp")
/// .dimensionMappings(
/// ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs.builder()
/// .dimensionValueType("VARCHAR")
/// .name("az")
/// .build(),
/// ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs.builder()
/// .dimensionValueType("VARCHAR")
/// .name("region")
/// .build(),
/// ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs.builder()
/// .dimensionValueType("VARCHAR")
/// .name("hostname")
/// .build())
/// .multiMeasureMappings(ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsArgs.builder()
/// .targetMultiMeasureName("multi-metrics")
/// .multiMeasureAttributeMappings(
/// ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs.builder()
/// .measureValueType("DOUBLE")
/// .sourceColumn("avg_cpu_utilization")
/// .build(),
/// ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs.builder()
/// .measureValueType("DOUBLE")
/// .sourceColumn("p90_cpu_utilization")
/// .build(),
/// ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs.builder()
/// .measureValueType("DOUBLE")
/// .sourceColumn("p95_cpu_utilization")
/// .build(),
/// ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs.builder()
/// .measureValueType("DOUBLE")
/// .sourceColumn("p99_cpu_utilization")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:timestreamquery:ScheduledQuery
/// properties:
/// executionRoleArn: ${exampleAwsIamRole.arn}
/// name: ${exampleAwsTimestreamwriteTable.tableName}
/// queryString: |
/// SELECT region, az, hostname, BIN(time, 15s) AS binned_timestamp,
/// \tROUND(AVG(cpu_utilization), 2) AS avg_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.9), 2) AS p90_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.95), 2) AS p95_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.99), 2) AS p99_cpu_utilization
/// FROM exampledatabase.exampletable
/// WHERE measure_name = 'metrics' AND time > ago(2h)
/// GROUP BY region, hostname, az, BIN(time, 15s)
/// ORDER BY binned_timestamp ASC
/// LIMIT 5
/// errorReportConfiguration:
/// s3Configuration:
/// bucketName: ${exampleAwsS3Bucket.bucket}
/// notificationConfiguration:
/// snsConfiguration:
/// topicArn: ${exampleAwsSnsTopic.arn}
/// scheduleConfiguration:
/// scheduleExpression: rate(1 hour)
/// targetConfiguration:
/// timestreamConfiguration:
/// databaseName: ${results.databaseName}
/// tableName: ${resultsAwsTimestreamwriteTable.tableName}
/// timeColumn: binned_timestamp
/// dimensionMappings:
/// - dimensionValueType: VARCHAR
/// name: az
/// - dimensionValueType: VARCHAR
/// name: region
/// - dimensionValueType: VARCHAR
/// name: hostname
/// multiMeasureMappings:
/// targetMultiMeasureName: multi-metrics
/// multiMeasureAttributeMappings:
/// - measureValueType: DOUBLE
/// sourceColumn: avg_cpu_utilization
/// - measureValueType: DOUBLE
/// sourceColumn: p90_cpu_utilization
/// - measureValueType: DOUBLE
/// sourceColumn: p95_cpu_utilization
/// - measureValueType: DOUBLE
/// sourceColumn: p99_cpu_utilization
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Multi-step Example
///
/// To ingest data before creating a scheduled query, this example provides multiple steps:
///
/// 1. Create the prerequisite infrastructure
/// 2. Ingest data
/// 3. Create the scheduled query
///
/// ### Step 1. Create the prerequisite infrastructure
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.s3.Bucket("test", {
/// bucket: "example",
/// forceDestroy: true,
/// });
/// const testTopic = new aws.sns.Topic("test", {name: "example"});
/// const testQueue = new aws.sqs.Queue("test", {
/// name: "example",
/// sqsManagedSseEnabled: true,
/// });
/// const testTopicSubscription = new aws.sns.TopicSubscription("test", {
/// topic: testTopic.arn,
/// protocol: "sqs",
/// endpoint: testQueue.arn,
/// });
/// const testQueuePolicy = new aws.sqs.QueuePolicy("test", {
/// queueUrl: testQueue.id,
/// policy: pulumi.jsonStringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Effect: "Allow",
/// Principal: {
/// AWS: "*",
/// },
/// Action: ["sqs:SendMessage"],
/// Resource: testQueue.arn,
/// Condition: {
/// ArnEquals: {
/// "aws:SourceArn": testTopic.arn,
/// },
/// },
/// }],
/// }),
/// });
/// const testRole = new aws.iam.Role("test", {
/// name: "example",
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Effect: "Allow",
/// Principal: {
/// Service: "timestream.amazonaws.com",
/// },
/// Action: "sts:AssumeRole",
/// }],
/// }),
/// tags: {
/// Name: "example",
/// },
/// });
/// const testRolePolicy = new aws.iam.RolePolicy("test", {
/// name: "example",
/// role: testRole.id,
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: [
/// "kms:Decrypt",
/// "sns:Publish",
/// "timestream:describeEndpoints",
/// "timestream:Select",
/// "timestream:SelectValues",
/// "timestream:WriteRecords",
/// "s3:PutObject",
/// ],
/// Resource: "*",
/// Effect: "Allow",
/// }],
/// }),
/// });
/// const testDatabase = new aws.timestreamwrite.Database("test", {databaseName: "exampledatabase"});
/// const testTable = new aws.timestreamwrite.Table("test", {
/// databaseName: testDatabase.databaseName,
/// tableName: "exampletable",
/// magneticStoreWriteProperties: {
/// enableMagneticStoreWrites: true,
/// },
/// retentionProperties: {
/// magneticStoreRetentionPeriodInDays: 1,
/// memoryStoreRetentionPeriodInHours: 1,
/// },
/// });
/// const results = new aws.timestreamwrite.Database("results", {databaseName: "exampledatabase-results"});
/// const resultsTable = new aws.timestreamwrite.Table("results", {
/// databaseName: results.databaseName,
/// tableName: "exampletable-results",
/// magneticStoreWriteProperties: {
/// enableMagneticStoreWrites: true,
/// },
/// retentionProperties: {
/// magneticStoreRetentionPeriodInDays: 1,
/// memoryStoreRetentionPeriodInHours: 1,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// test = aws.s3.Bucket("test",
/// bucket="example",
/// force_destroy=True)
/// test_topic = aws.sns.Topic("test", name="example")
/// test_queue = aws.sqs.Queue("test",
/// name="example",
/// sqs_managed_sse_enabled=True)
/// test_topic_subscription = aws.sns.TopicSubscription("test",
/// topic=test_topic.arn,
/// protocol="sqs",
/// endpoint=test_queue.arn)
/// test_queue_policy = aws.sqs.QueuePolicy("test",
/// queue_url=test_queue.id,
/// policy=pulumi.Output.json_dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": "*",
/// },
/// "Action": ["sqs:SendMessage"],
/// "Resource": test_queue.arn,
/// "Condition": {
/// "ArnEquals": {
/// "aws:SourceArn": test_topic.arn,
/// },
/// },
/// }],
/// }))
/// test_role = aws.iam.Role("test",
/// name="example",
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Effect": "Allow",
/// "Principal": {
/// "Service": "timestream.amazonaws.com",
/// },
/// "Action": "sts:AssumeRole",
/// }],
/// }),
/// tags={
/// "Name": "example",
/// })
/// test_role_policy = aws.iam.RolePolicy("test",
/// name="example",
/// role=test_role.id,
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": [
/// "kms:Decrypt",
/// "sns:Publish",
/// "timestream:describeEndpoints",
/// "timestream:Select",
/// "timestream:SelectValues",
/// "timestream:WriteRecords",
/// "s3:PutObject",
/// ],
/// "Resource": "*",
/// "Effect": "Allow",
/// }],
/// }))
/// test_database = aws.timestreamwrite.Database("test", database_name="exampledatabase")
/// test_table = aws.timestreamwrite.Table("test",
/// database_name=test_database.database_name,
/// table_name="exampletable",
/// magnetic_store_write_properties={
/// "enable_magnetic_store_writes": True,
/// },
/// retention_properties={
/// "magnetic_store_retention_period_in_days": 1,
/// "memory_store_retention_period_in_hours": 1,
/// })
/// results = aws.timestreamwrite.Database("results", database_name="exampledatabase-results")
/// results_table = aws.timestreamwrite.Table("results",
/// database_name=results.database_name,
/// table_name="exampletable-results",
/// magnetic_store_write_properties={
/// "enable_magnetic_store_writes": True,
/// },
/// retention_properties={
/// "magnetic_store_retention_period_in_days": 1,
/// "memory_store_retention_period_in_hours": 1,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.S3.Bucket("test", new()
/// {
/// BucketName = "example",
/// ForceDestroy = true,
/// });
///
/// var testTopic = new Aws.Sns.Topic("test", new()
/// {
/// Name = "example",
/// });
///
/// var testQueue = new Aws.Sqs.Queue("test", new()
/// {
/// Name = "example",
/// SqsManagedSseEnabled = true,
/// });
///
/// var testTopicSubscription = new Aws.Sns.TopicSubscription("test", new()
/// {
/// Topic = testTopic.Arn,
/// Protocol = "sqs",
/// Endpoint = testQueue.Arn,
/// });
///
/// var testQueuePolicy = new Aws.Sqs.QueuePolicy("test", new()
/// {
/// QueueUrl = testQueue.Id,
/// Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = "*",
/// },
/// ["Action"] = new[]
/// {
/// "sqs:SendMessage",
/// },
/// ["Resource"] = testQueue.Arn,
/// ["Condition"] = new Dictionary<string, object?>
/// {
/// ["ArnEquals"] = new Dictionary<string, object?>
/// {
/// ["aws:SourceArn"] = testTopic.Arn,
/// },
/// },
/// },
/// },
/// })),
/// });
///
/// var testRole = new Aws.Iam.Role("test", new()
/// {
/// Name = "example",
/// AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "timestream.amazonaws.com",
/// },
/// ["Action"] = "sts:AssumeRole",
/// },
/// },
/// }),
/// Tags =
/// {
/// { "Name", "example" },
/// },
/// });
///
/// var testRolePolicy = new Aws.Iam.RolePolicy("test", new()
/// {
/// Name = "example",
/// Role = testRole.Id,
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "kms:Decrypt",
/// "sns:Publish",
/// "timestream:describeEndpoints",
/// "timestream:Select",
/// "timestream:SelectValues",
/// "timestream:WriteRecords",
/// "s3:PutObject",
/// },
/// ["Resource"] = "*",
/// ["Effect"] = "Allow",
/// },
/// },
/// }),
/// });
///
/// var testDatabase = new Aws.TimestreamWrite.Database("test", new()
/// {
/// DatabaseName = "exampledatabase",
/// });
///
/// var testTable = new Aws.TimestreamWrite.Table("test", new()
/// {
/// DatabaseName = testDatabase.DatabaseName,
/// TableName = "exampletable",
/// MagneticStoreWriteProperties = new Aws.TimestreamWrite.Inputs.TableMagneticStoreWritePropertiesArgs
/// {
/// EnableMagneticStoreWrites = true,
/// },
/// RetentionProperties = new Aws.TimestreamWrite.Inputs.TableRetentionPropertiesArgs
/// {
/// MagneticStoreRetentionPeriodInDays = 1,
/// MemoryStoreRetentionPeriodInHours = 1,
/// },
/// });
///
/// var results = new Aws.TimestreamWrite.Database("results", new()
/// {
/// DatabaseName = "exampledatabase-results",
/// });
///
/// var resultsTable = new Aws.TimestreamWrite.Table("results", new()
/// {
/// DatabaseName = results.DatabaseName,
/// TableName = "exampletable-results",
/// MagneticStoreWriteProperties = new Aws.TimestreamWrite.Inputs.TableMagneticStoreWritePropertiesArgs
/// {
/// EnableMagneticStoreWrites = true,
/// },
/// RetentionProperties = new Aws.TimestreamWrite.Inputs.TableRetentionPropertiesArgs
/// {
/// MagneticStoreRetentionPeriodInDays = 1,
/// MemoryStoreRetentionPeriodInHours = 1,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamwrite"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := s3.NewBucket(ctx, "test", &s3.BucketArgs{
/// Bucket:       pulumi.String("example"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// testTopic, err := sns.NewTopic(ctx, "test", &sns.TopicArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// testQueue, err := sqs.NewQueue(ctx, "test", &sqs.QueueArgs{
/// Name:                 pulumi.String("example"),
/// SqsManagedSseEnabled: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sns.NewTopicSubscription(ctx, "test", &sns.TopicSubscriptionArgs{
/// Topic:    testTopic.Arn,
/// Protocol: pulumi.String("sqs"),
/// Endpoint: testQueue.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sqs.NewQueuePolicy(ctx, "test", &sqs.QueuePolicyArgs{
/// QueueUrl: testQueue.ID(),
/// Policy: pulumi.All(testQueue.Arn, testTopic.Arn).ApplyT(func(_args []interface{}) (string, error) {
/// testQueueArn := _args[0].(string)
/// testTopicArn := _args[1].(string)
/// var _zero string
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": "*",
/// },
/// "Action": []string{
/// "sqs:SendMessage",
/// },
/// "Resource": testQueueArn,
/// "Condition": map[string]interface{}{
/// "ArnEquals": map[string]interface{}{
/// "aws:SourceArn": testTopicArn,
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return _zero, err
/// }
/// json0 := string(tmpJSON0)
/// return json0, nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON1, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "Service": "timestream.amazonaws.com",
/// },
/// "Action": "sts:AssumeRole",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json1 := string(tmpJSON1)
/// testRole, err := iam.NewRole(ctx, "test", &iam.RoleArgs{
/// Name:             pulumi.String("example"),
/// AssumeRolePolicy: pulumi.String(json1),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON2, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": []string{
/// "kms:Decrypt",
/// "sns:Publish",
/// "timestream:describeEndpoints",
/// "timestream:Select",
/// "timestream:SelectValues",
/// "timestream:WriteRecords",
/// "s3:PutObject",
/// },
/// "Resource": "*",
/// "Effect":   "Allow",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json2 := string(tmpJSON2)
/// _, err = iam.NewRolePolicy(ctx, "test", &iam.RolePolicyArgs{
/// Name:   pulumi.String("example"),
/// Role:   testRole.ID(),
/// Policy: pulumi.String(json2),
/// })
/// if err != nil {
/// return err
/// }
/// testDatabase, err := timestreamwrite.NewDatabase(ctx, "test", &timestreamwrite.DatabaseArgs{
/// DatabaseName: pulumi.String("exampledatabase"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = timestreamwrite.NewTable(ctx, "test", &timestreamwrite.TableArgs{
/// DatabaseName: testDatabase.DatabaseName,
/// TableName:    pulumi.String("exampletable"),
/// MagneticStoreWriteProperties: &timestreamwrite.TableMagneticStoreWritePropertiesArgs{
/// EnableMagneticStoreWrites: pulumi.Bool(true),
/// },
/// RetentionProperties: &timestreamwrite.TableRetentionPropertiesArgs{
/// MagneticStoreRetentionPeriodInDays: pulumi.Int(1),
/// MemoryStoreRetentionPeriodInHours:  pulumi.Int(1),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// results, err := timestreamwrite.NewDatabase(ctx, "results", &timestreamwrite.DatabaseArgs{
/// DatabaseName: pulumi.String("exampledatabase-results"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = timestreamwrite.NewTable(ctx, "results", &timestreamwrite.TableArgs{
/// DatabaseName: results.DatabaseName,
/// TableName:    pulumi.String("exampletable-results"),
/// MagneticStoreWriteProperties: &timestreamwrite.TableMagneticStoreWritePropertiesArgs{
/// EnableMagneticStoreWrites: pulumi.Bool(true),
/// },
/// RetentionProperties: &timestreamwrite.TableRetentionPropertiesArgs{
/// MagneticStoreRetentionPeriodInDays: pulumi.Int(1),
/// MemoryStoreRetentionPeriodInHours:  pulumi.Int(1),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.sns.TopicSubscription;
/// import com.pulumi.aws.sns.TopicSubscriptionArgs;
/// import com.pulumi.aws.sqs.QueuePolicy;
/// import com.pulumi.aws.sqs.QueuePolicyArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.timestreamwrite.Database;
/// import com.pulumi.aws.timestreamwrite.DatabaseArgs;
/// import com.pulumi.aws.timestreamwrite.Table;
/// import com.pulumi.aws.timestreamwrite.TableArgs;
/// import com.pulumi.aws.timestreamwrite.inputs.TableMagneticStoreWritePropertiesArgs;
/// import com.pulumi.aws.timestreamwrite.inputs.TableRetentionPropertiesArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new Bucket("test", BucketArgs.builder()
/// .bucket("example")
/// .forceDestroy(true)
/// .build());
///
/// var testTopic = new Topic("testTopic", TopicArgs.builder()
/// .name("example")
/// .build());
///
/// var testQueue = new Queue("testQueue", QueueArgs.builder()
/// .name("example")
/// .sqsManagedSseEnabled(true)
/// .build());
///
/// var testTopicSubscription = new TopicSubscription("testTopicSubscription", TopicSubscriptionArgs.builder()
/// .topic(testTopic.arn())
/// .protocol("sqs")
/// .endpoint(testQueue.arn())
/// .build());
///
/// var testQueuePolicy = new QueuePolicy("testQueuePolicy", QueuePolicyArgs.builder()
/// .queueUrl(testQueue.id())
/// .policy(Output.tuple(testQueue.arn(), testTopic.arn()).applyValue(values -> {
/// var testQueueArn = values.t1;
/// var testTopicArn = values.t2;
/// return serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", "*")
/// )),
/// jsonProperty("Action", jsonArray("sqs:SendMessage")),
/// jsonProperty("Resource", testQueueArn),
/// jsonProperty("Condition", jsonObject(
/// jsonProperty("ArnEquals", jsonObject(
/// jsonProperty("aws:SourceArn", testTopicArn)
/// ))
/// ))
/// )))
/// ));
/// }))
/// .build());
///
/// var testRole = new Role("testRole", RoleArgs.builder()
/// .name("example")
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "timestream.amazonaws.com")
/// )),
/// jsonProperty("Action", "sts:AssumeRole")
/// )))
/// )))
/// .tags(Map.of("Name", "example"))
/// .build());
///
/// var testRolePolicy = new RolePolicy("testRolePolicy", RolePolicyArgs.builder()
/// .name("example")
/// .role(testRole.id())
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", jsonArray(
/// "kms:Decrypt",
/// "sns:Publish",
/// "timestream:describeEndpoints",
/// "timestream:Select",
/// "timestream:SelectValues",
/// "timestream:WriteRecords",
/// "s3:PutObject"
/// )),
/// jsonProperty("Resource", "*"),
/// jsonProperty("Effect", "Allow")
/// )))
/// )))
/// .build());
///
/// var testDatabase = new Database("testDatabase", DatabaseArgs.builder()
/// .databaseName("exampledatabase")
/// .build());
///
/// var testTable = new Table("testTable", TableArgs.builder()
/// .databaseName(testDatabase.databaseName())
/// .tableName("exampletable")
/// .magneticStoreWriteProperties(TableMagneticStoreWritePropertiesArgs.builder()
/// .enableMagneticStoreWrites(true)
/// .build())
/// .retentionProperties(TableRetentionPropertiesArgs.builder()
/// .magneticStoreRetentionPeriodInDays(1)
/// .memoryStoreRetentionPeriodInHours(1)
/// .build())
/// .build());
///
/// var results = new Database("results", DatabaseArgs.builder()
/// .databaseName("exampledatabase-results")
/// .build());
///
/// var resultsTable = new Table("resultsTable", TableArgs.builder()
/// .databaseName(results.databaseName())
/// .tableName("exampletable-results")
/// .magneticStoreWriteProperties(TableMagneticStoreWritePropertiesArgs.builder()
/// .enableMagneticStoreWrites(true)
/// .build())
/// .retentionProperties(TableRetentionPropertiesArgs.builder()
/// .magneticStoreRetentionPeriodInDays(1)
/// .memoryStoreRetentionPeriodInHours(1)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:s3:Bucket
/// properties:
/// bucket: example
/// forceDestroy: true
/// testTopic:
/// type: aws:sns:Topic
/// name: test
/// properties:
/// name: example
/// testQueue:
/// type: aws:sqs:Queue
/// name: test
/// properties:
/// name: example
/// sqsManagedSseEnabled: true
/// testTopicSubscription:
/// type: aws:sns:TopicSubscription
/// name: test
/// properties:
/// topic: ${testTopic.arn}
/// protocol: sqs
/// endpoint: ${testQueue.arn}
/// testQueuePolicy:
/// type: aws:sqs:QueuePolicy
/// name: test
/// properties:
/// queueUrl: ${testQueue.id}
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Effect: Allow
/// Principal:
/// AWS: '*'
/// Action:
/// - sqs:SendMessage
/// Resource: ${testQueue.arn}
/// Condition:
/// ArnEquals:
/// aws:SourceArn: ${testTopic.arn}
/// testRole:
/// type: aws:iam:Role
/// name: test
/// properties:
/// name: example
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Effect: Allow
/// Principal:
/// Service: timestream.amazonaws.com
/// Action: sts:AssumeRole
/// tags:
/// Name: example
/// testRolePolicy:
/// type: aws:iam:RolePolicy
/// name: test
/// properties:
/// name: example
/// role: ${testRole.id}
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action:
/// - kms:Decrypt
/// - sns:Publish
/// - timestream:describeEndpoints
/// - timestream:Select
/// - timestream:SelectValues
/// - timestream:WriteRecords
/// - s3:PutObject
/// Resource: '*'
/// Effect: Allow
/// testDatabase:
/// type: aws:timestreamwrite:Database
/// name: test
/// properties:
/// databaseName: exampledatabase
/// testTable:
/// type: aws:timestreamwrite:Table
/// name: test
/// properties:
/// databaseName: ${testDatabase.databaseName}
/// tableName: exampletable
/// magneticStoreWriteProperties:
/// enableMagneticStoreWrites: true
/// retentionProperties:
/// magneticStoreRetentionPeriodInDays: 1
/// memoryStoreRetentionPeriodInHours: 1
/// results:
/// type: aws:timestreamwrite:Database
/// properties:
/// databaseName: exampledatabase-results
/// resultsTable:
/// type: aws:timestreamwrite:Table
/// name: results
/// properties:
/// databaseName: ${results.databaseName}
/// tableName: exampletable-results
/// magneticStoreWriteProperties:
/// enableMagneticStoreWrites: true
/// retentionProperties:
/// magneticStoreRetentionPeriodInDays: 1
/// memoryStoreRetentionPeriodInHours: 1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// #### Step 2. Ingest data
///
/// This is done with Amazon Timestream Write [WriteRecords](https://docs.aws.amazon.com/timestream/latest/developerguide/API_WriteRecords.html).
///
/// ### Step 3. Create the scheduled query
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.timestreamquery.ScheduledQuery("example", {
/// executionRoleArn: exampleAwsIamRole.arn,
/// name: exampleAwsTimestreamwriteTable.tableName,
/// queryString: `SELECT region, az, hostname, BIN(time, 15s) AS binned_timestamp,
/// \\tROUND(AVG(cpu_utilization), 2) AS avg_cpu_utilization,
/// \\tROUND(APPROX_PERCENTILE(cpu_utilization, 0.9), 2) AS p90_cpu_utilization,
/// \\tROUND(APPROX_PERCENTILE(cpu_utilization, 0.95), 2) AS p95_cpu_utilization,
/// \\tROUND(APPROX_PERCENTILE(cpu_utilization, 0.99), 2) AS p99_cpu_utilization
/// FROM exampledatabase.exampletable
/// WHERE measure_name = 'metrics' AND time > ago(2h)
/// GROUP BY region, hostname, az, BIN(time, 15s)
/// ORDER BY binned_timestamp ASC
/// LIMIT 5
/// `,
/// errorReportConfiguration: {
/// s3Configuration: {
/// bucketName: exampleAwsS3Bucket.bucket,
/// },
/// },
/// notificationConfiguration: {
/// snsConfiguration: {
/// topicArn: exampleAwsSnsTopic.arn,
/// },
/// },
/// scheduleConfiguration: {
/// scheduleExpression: "rate(1 hour)",
/// },
/// targetConfiguration: {
/// timestreamConfiguration: {
/// databaseName: results.databaseName,
/// tableName: resultsAwsTimestreamwriteTable.tableName,
/// timeColumn: "binned_timestamp",
/// dimensionMappings: [
/// {
/// dimensionValueType: "VARCHAR",
/// name: "az",
/// },
/// {
/// dimensionValueType: "VARCHAR",
/// name: "region",
/// },
/// {
/// dimensionValueType: "VARCHAR",
/// name: "hostname",
/// },
/// ],
/// multiMeasureMappings: {
/// targetMultiMeasureName: "multi-metrics",
/// multiMeasureAttributeMappings: [
/// {
/// measureValueType: "DOUBLE",
/// sourceColumn: "avg_cpu_utilization",
/// },
/// {
/// measureValueType: "DOUBLE",
/// sourceColumn: "p90_cpu_utilization",
/// },
/// {
/// measureValueType: "DOUBLE",
/// sourceColumn: "p95_cpu_utilization",
/// },
/// {
/// measureValueType: "DOUBLE",
/// sourceColumn: "p99_cpu_utilization",
/// },
/// ],
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreamquery.ScheduledQuery("example",
/// execution_role_arn=example_aws_iam_role["arn"],
/// name=example_aws_timestreamwrite_table["tableName"],
/// query_string="""SELECT region, az, hostname, BIN(time, 15s) AS binned_timestamp,
/// \tROUND(AVG(cpu_utilization), 2) AS avg_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.9), 2) AS p90_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.95), 2) AS p95_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.99), 2) AS p99_cpu_utilization
/// FROM exampledatabase.exampletable
/// WHERE measure_name = 'metrics' AND time > ago(2h)
/// GROUP BY region, hostname, az, BIN(time, 15s)
/// ORDER BY binned_timestamp ASC
/// LIMIT 5
/// """,
/// error_report_configuration={
/// "s3_configuration": {
/// "bucket_name": example_aws_s3_bucket["bucket"],
/// },
/// },
/// notification_configuration={
/// "sns_configuration": {
/// "topic_arn": example_aws_sns_topic["arn"],
/// },
/// },
/// schedule_configuration={
/// "schedule_expression": "rate(1 hour)",
/// },
/// target_configuration={
/// "timestream_configuration": {
/// "database_name": results["databaseName"],
/// "table_name": results_aws_timestreamwrite_table["tableName"],
/// "time_column": "binned_timestamp",
/// "dimension_mappings": [
/// {
/// "dimension_value_type": "VARCHAR",
/// "name": "az",
/// },
/// {
/// "dimension_value_type": "VARCHAR",
/// "name": "region",
/// },
/// {
/// "dimension_value_type": "VARCHAR",
/// "name": "hostname",
/// },
/// ],
/// "multi_measure_mappings": {
/// "target_multi_measure_name": "multi-metrics",
/// "multi_measure_attribute_mappings": [
/// {
/// "measure_value_type": "DOUBLE",
/// "source_column": "avg_cpu_utilization",
/// },
/// {
/// "measure_value_type": "DOUBLE",
/// "source_column": "p90_cpu_utilization",
/// },
/// {
/// "measure_value_type": "DOUBLE",
/// "source_column": "p95_cpu_utilization",
/// },
/// {
/// "measure_value_type": "DOUBLE",
/// "source_column": "p99_cpu_utilization",
/// },
/// ],
/// },
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.TimestreamQuery.ScheduledQuery("example", new()
/// {
/// ExecutionRoleArn = exampleAwsIamRole.Arn,
/// Name = exampleAwsTimestreamwriteTable.TableName,
/// QueryString = @"SELECT region, az, hostname, BIN(time, 15s) AS binned_timestamp,
/// \tROUND(AVG(cpu_utilization), 2) AS avg_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.9), 2) AS p90_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.95), 2) AS p95_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.99), 2) AS p99_cpu_utilization
/// FROM exampledatabase.exampletable
/// WHERE measure_name = 'metrics' AND time > ago(2h)
/// GROUP BY region, hostname, az, BIN(time, 15s)
/// ORDER BY binned_timestamp ASC
/// LIMIT 5
/// ",
/// ErrorReportConfiguration = new Aws.TimestreamQuery.Inputs.ScheduledQueryErrorReportConfigurationArgs
/// {
/// S3Configuration = new Aws.TimestreamQuery.Inputs.ScheduledQueryErrorReportConfigurationS3ConfigurationArgs
/// {
/// BucketName = exampleAwsS3Bucket.Bucket,
/// },
/// },
/// NotificationConfiguration = new Aws.TimestreamQuery.Inputs.ScheduledQueryNotificationConfigurationArgs
/// {
/// SnsConfiguration = new Aws.TimestreamQuery.Inputs.ScheduledQueryNotificationConfigurationSnsConfigurationArgs
/// {
/// TopicArn = exampleAwsSnsTopic.Arn,
/// },
/// },
/// ScheduleConfiguration = new Aws.TimestreamQuery.Inputs.ScheduledQueryScheduleConfigurationArgs
/// {
/// ScheduleExpression = "rate(1 hour)",
/// },
/// TargetConfiguration = new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationArgs
/// {
/// TimestreamConfiguration = new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationArgs
/// {
/// DatabaseName = results.DatabaseName,
/// TableName = resultsAwsTimestreamwriteTable.TableName,
/// TimeColumn = "binned_timestamp",
/// DimensionMappings = new[]
/// {
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs
/// {
/// DimensionValueType = "VARCHAR",
/// Name = "az",
/// },
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs
/// {
/// DimensionValueType = "VARCHAR",
/// Name = "region",
/// },
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs
/// {
/// DimensionValueType = "VARCHAR",
/// Name = "hostname",
/// },
/// },
/// MultiMeasureMappings = new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsArgs
/// {
/// TargetMultiMeasureName = "multi-metrics",
/// MultiMeasureAttributeMappings = new[]
/// {
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs
/// {
/// MeasureValueType = "DOUBLE",
/// SourceColumn = "avg_cpu_utilization",
/// },
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs
/// {
/// MeasureValueType = "DOUBLE",
/// SourceColumn = "p90_cpu_utilization",
/// },
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs
/// {
/// MeasureValueType = "DOUBLE",
/// SourceColumn = "p95_cpu_utilization",
/// },
/// new Aws.TimestreamQuery.Inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs
/// {
/// MeasureValueType = "DOUBLE",
/// SourceColumn = "p99_cpu_utilization",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := timestreamquery.NewScheduledQuery(ctx, "example", &timestreamquery.ScheduledQueryArgs{
/// ExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// Name:             pulumi.Any(exampleAwsTimestreamwriteTable.TableName),
/// QueryString: pulumi.String(`SELECT region, az, hostname, BIN(time, 15s) AS binned_timestamp,
/// \tROUND(AVG(cpu_utilization), 2) AS avg_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.9), 2) AS p90_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.95), 2) AS p95_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.99), 2) AS p99_cpu_utilization
/// FROM exampledatabase.exampletable
/// WHERE measure_name = 'metrics' AND time > ago(2h)
/// GROUP BY region, hostname, az, BIN(time, 15s)
/// ORDER BY binned_timestamp ASC
/// LIMIT 5
/// `),
/// ErrorReportConfiguration: &timestreamquery.ScheduledQueryErrorReportConfigurationArgs{
/// S3Configuration: &timestreamquery.ScheduledQueryErrorReportConfigurationS3ConfigurationArgs{
/// BucketName: pulumi.Any(exampleAwsS3Bucket.Bucket),
/// },
/// },
/// NotificationConfiguration: &timestreamquery.ScheduledQueryNotificationConfigurationArgs{
/// SnsConfiguration: &timestreamquery.ScheduledQueryNotificationConfigurationSnsConfigurationArgs{
/// TopicArn: pulumi.Any(exampleAwsSnsTopic.Arn),
/// },
/// },
/// ScheduleConfiguration: &timestreamquery.ScheduledQueryScheduleConfigurationArgs{
/// ScheduleExpression: pulumi.String("rate(1 hour)"),
/// },
/// TargetConfiguration: &timestreamquery.ScheduledQueryTargetConfigurationArgs{
/// TimestreamConfiguration: &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationArgs{
/// DatabaseName: pulumi.Any(results.DatabaseName),
/// TableName:    pulumi.Any(resultsAwsTimestreamwriteTable.TableName),
/// TimeColumn:   pulumi.String("binned_timestamp"),
/// DimensionMappings: timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArray{
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs{
/// DimensionValueType: pulumi.String("VARCHAR"),
/// Name:               pulumi.String("az"),
/// },
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs{
/// DimensionValueType: pulumi.String("VARCHAR"),
/// Name:               pulumi.String("region"),
/// },
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs{
/// DimensionValueType: pulumi.String("VARCHAR"),
/// Name:               pulumi.String("hostname"),
/// },
/// },
/// MultiMeasureMappings: &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsArgs{
/// TargetMultiMeasureName: pulumi.String("multi-metrics"),
/// MultiMeasureAttributeMappings: timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArray{
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs{
/// MeasureValueType: pulumi.String("DOUBLE"),
/// SourceColumn:     pulumi.String("avg_cpu_utilization"),
/// },
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs{
/// MeasureValueType: pulumi.String("DOUBLE"),
/// SourceColumn:     pulumi.String("p90_cpu_utilization"),
/// },
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs{
/// MeasureValueType: pulumi.String("DOUBLE"),
/// SourceColumn:     pulumi.String("p95_cpu_utilization"),
/// },
/// &timestreamquery.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs{
/// MeasureValueType: pulumi.String("DOUBLE"),
/// SourceColumn:     pulumi.String("p99_cpu_utilization"),
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.timestreamquery.ScheduledQuery;
/// import com.pulumi.aws.timestreamquery.ScheduledQueryArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryErrorReportConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryErrorReportConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryNotificationConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryNotificationConfigurationSnsConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryScheduleConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryTargetConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationArgs;
/// import com.pulumi.aws.timestreamquery.inputs.ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ScheduledQuery("example", ScheduledQueryArgs.builder()
/// .executionRoleArn(exampleAwsIamRole.arn())
/// .name(exampleAwsTimestreamwriteTable.tableName())
/// .queryString("""
/// SELECT region, az, hostname, BIN(time, 15s) AS binned_timestamp,
/// \tROUND(AVG(cpu_utilization), 2) AS avg_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.9), 2) AS p90_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.95), 2) AS p95_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.99), 2) AS p99_cpu_utilization
/// FROM exampledatabase.exampletable
/// WHERE measure_name = 'metrics' AND time > ago(2h)
/// GROUP BY region, hostname, az, BIN(time, 15s)
/// ORDER BY binned_timestamp ASC
/// LIMIT 5
/// """)
/// .errorReportConfiguration(ScheduledQueryErrorReportConfigurationArgs.builder()
/// .s3Configuration(ScheduledQueryErrorReportConfigurationS3ConfigurationArgs.builder()
/// .bucketName(exampleAwsS3Bucket.bucket())
/// .build())
/// .build())
/// .notificationConfiguration(ScheduledQueryNotificationConfigurationArgs.builder()
/// .snsConfiguration(ScheduledQueryNotificationConfigurationSnsConfigurationArgs.builder()
/// .topicArn(exampleAwsSnsTopic.arn())
/// .build())
/// .build())
/// .scheduleConfiguration(ScheduledQueryScheduleConfigurationArgs.builder()
/// .scheduleExpression("rate(1 hour)")
/// .build())
/// .targetConfiguration(ScheduledQueryTargetConfigurationArgs.builder()
/// .timestreamConfiguration(ScheduledQueryTargetConfigurationTimestreamConfigurationArgs.builder()
/// .databaseName(results.databaseName())
/// .tableName(resultsAwsTimestreamwriteTable.tableName())
/// .timeColumn("binned_timestamp")
/// .dimensionMappings(
/// ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs.builder()
/// .dimensionValueType("VARCHAR")
/// .name("az")
/// .build(),
/// ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs.builder()
/// .dimensionValueType("VARCHAR")
/// .name("region")
/// .build(),
/// ScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMappingArgs.builder()
/// .dimensionValueType("VARCHAR")
/// .name("hostname")
/// .build())
/// .multiMeasureMappings(ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsArgs.builder()
/// .targetMultiMeasureName("multi-metrics")
/// .multiMeasureAttributeMappings(
/// ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs.builder()
/// .measureValueType("DOUBLE")
/// .sourceColumn("avg_cpu_utilization")
/// .build(),
/// ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs.builder()
/// .measureValueType("DOUBLE")
/// .sourceColumn("p90_cpu_utilization")
/// .build(),
/// ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs.builder()
/// .measureValueType("DOUBLE")
/// .sourceColumn("p95_cpu_utilization")
/// .build(),
/// ScheduledQueryTargetConfigurationTimestreamConfigurationMultiMeasureMappingsMultiMeasureAttributeMappingArgs.builder()
/// .measureValueType("DOUBLE")
/// .sourceColumn("p99_cpu_utilization")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:timestreamquery:ScheduledQuery
/// properties:
/// executionRoleArn: ${exampleAwsIamRole.arn}
/// name: ${exampleAwsTimestreamwriteTable.tableName}
/// queryString: |
/// SELECT region, az, hostname, BIN(time, 15s) AS binned_timestamp,
/// \tROUND(AVG(cpu_utilization), 2) AS avg_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.9), 2) AS p90_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.95), 2) AS p95_cpu_utilization,
/// \tROUND(APPROX_PERCENTILE(cpu_utilization, 0.99), 2) AS p99_cpu_utilization
/// FROM exampledatabase.exampletable
/// WHERE measure_name = 'metrics' AND time > ago(2h)
/// GROUP BY region, hostname, az, BIN(time, 15s)
/// ORDER BY binned_timestamp ASC
/// LIMIT 5
/// errorReportConfiguration:
/// s3Configuration:
/// bucketName: ${exampleAwsS3Bucket.bucket}
/// notificationConfiguration:
/// snsConfiguration:
/// topicArn: ${exampleAwsSnsTopic.arn}
/// scheduleConfiguration:
/// scheduleExpression: rate(1 hour)
/// targetConfiguration:
/// timestreamConfiguration:
/// databaseName: ${results.databaseName}
/// tableName: ${resultsAwsTimestreamwriteTable.tableName}
/// timeColumn: binned_timestamp
/// dimensionMappings:
/// - dimensionValueType: VARCHAR
/// name: az
/// - dimensionValueType: VARCHAR
/// name: region
/// - dimensionValueType: VARCHAR
/// name: hostname
/// multiMeasureMappings:
/// targetMultiMeasureName: multi-metrics
/// multiMeasureAttributeMappings:
/// - measureValueType: DOUBLE
/// sourceColumn: avg_cpu_utilization
/// - measureValueType: DOUBLE
/// sourceColumn: p90_cpu_utilization
/// - measureValueType: DOUBLE
/// sourceColumn: p95_cpu_utilization
/// - measureValueType: DOUBLE
/// sourceColumn: p99_cpu_utilization
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Timestream Query Scheduled Query using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:timestreamquery/scheduledQuery:ScheduledQuery example arn:aws:timestream:us-west-2:012345678901:scheduled-query/tf-acc-test-7774188528604787105-e13659544fe66c8d
/// ```
class ScheduledQuery extends CustomResource {
  /// ARN of the Scheduled Query.
  late final Output<String> arn;

  /// Creation time for the scheduled query.
  late final Output<String> creationTime;

  /// Configuration block for error reporting configuration. See below.
  late final Output<ScheduledQueryErrorReportConfiguration>
      errorReportConfiguration;

  /// ARN for the IAM role that Timestream will assume when running the scheduled query.
  late final Output<String> executionRoleArn;

  /// Amazon KMS key used to encrypt the scheduled query resource, at-rest. If not specified, the scheduled query resource will be encrypted with a Timestream owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix the name with "alias/". If <span pulumi-lang-nodejs="`errorReportConfiguration`" pulumi-lang-dotnet="`ErrorReportConfiguration`" pulumi-lang-go="`errorReportConfiguration`" pulumi-lang-python="`error_report_configuration`" pulumi-lang-yaml="`errorReportConfiguration`" pulumi-lang-java="`errorReportConfiguration`">`error_report_configuration`</span> uses `SSE_KMS` as the encryption type, the same <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span> is used to encrypt the error report at rest.
  late final Output<String?> kmsKeyId;

  /// Runtime summary for the last scheduled query run.
  late final Output<List<ScheduledQueryLastRunSummary>?> lastRunSummaries;

  /// Name of the scheduled query.
  late final Output<String> name;

  /// Next time the scheduled query is scheduled to run.
  late final Output<String> nextInvocationTime;

  /// Configuration block for notification configuration for a scheduled query. A notification is sent by Timestream when a scheduled query is created, its state is updated, or when it is deleted. See below.
  late final Output<ScheduledQueryNotificationConfiguration>
      notificationConfiguration;

  /// Last time the scheduled query was run.
  late final Output<String> previousInvocationTime;

  /// Query string to run. Parameter names can be specified in the query string using the `@` character followed by an identifier. The named parameter `@scheduled_runtime` is reserved and can be used in the query to get the time at which the query is scheduled to run. The timestamp calculated according to the <span pulumi-lang-nodejs="`scheduleConfiguration`" pulumi-lang-dotnet="`ScheduleConfiguration`" pulumi-lang-go="`scheduleConfiguration`" pulumi-lang-python="`schedule_configuration`" pulumi-lang-yaml="`scheduleConfiguration`" pulumi-lang-java="`scheduleConfiguration`">`schedule_configuration`</span> parameter, will be the value of `@scheduled_runtime` paramater for each query run. For example, consider an instance of a scheduled query executing on 2021-12-01 00:00:00. For this instance, the `@scheduled_runtime` parameter is initialized to the timestamp 2021-12-01 00:00:00 when invoking the query.
  late final Output<String> queryString;

  /// Runtime summary for the last five failed scheduled query runs.
  late final Output<List<ScheduledQueryRecentlyFailedRun>?> recentlyFailedRuns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for schedule configuration for the query. See below.
  late final Output<ScheduledQueryScheduleConfiguration> scheduleConfiguration;

  /// State of the scheduled query, either `ENABLED` or `DISABLED`.
  late final Output<String> state;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for writing the result of a query. See below.
  ///
  /// The following arguments are optional:
  late final Output<ScheduledQueryTargetConfiguration> targetConfiguration;
  late final Output<ScheduledQueryTimeouts?> timeouts;

  ScheduledQuery(
    String name, {
    ScheduledQueryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:timestreamquery/scheduledQuery:ScheduledQuery',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationTime = registerOutput<String>('creationTime');
    this.errorReportConfiguration =
        registerOutput<ScheduledQueryErrorReportConfiguration>(
            'errorReportConfiguration');
    this.executionRoleArn = registerOutput<String>('executionRoleArn');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.lastRunSummaries =
        registerOutput<List<ScheduledQueryLastRunSummary>?>('lastRunSummaries');
    this.name = registerOutput<String>('name');
    this.nextInvocationTime = registerOutput<String>('nextInvocationTime');
    this.notificationConfiguration =
        registerOutput<ScheduledQueryNotificationConfiguration>(
            'notificationConfiguration');
    this.previousInvocationTime =
        registerOutput<String>('previousInvocationTime');
    this.queryString = registerOutput<String>('queryString');
    this.recentlyFailedRuns =
        registerOutput<List<ScheduledQueryRecentlyFailedRun>?>(
            'recentlyFailedRuns');
    this.region = registerOutput<String>('region');
    this.scheduleConfiguration =
        registerOutput<ScheduledQueryScheduleConfiguration>(
            'scheduleConfiguration');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetConfiguration =
        registerOutput<ScheduledQueryTargetConfiguration>(
            'targetConfiguration');
    this.timeouts = registerOutput<ScheduledQueryTimeouts?>('timeouts');
  }
}
