import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_args.dart';
import 'analytics_application_cloudwatch_logging_options.dart';
import 'analytics_application_inputs.dart';
import 'analytics_application_output.dart';
import 'analytics_application_reference_data_sources.dart';

/// Provides a Kinesis Analytics Application resource. Kinesis Analytics is a managed service that
/// allows processing and analyzing streaming data using standard SQL.
///
/// For more details, see the [Amazon Kinesis Analytics Documentation](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/what-is.html).
///
/// !> **WARNING:** _This resource is deprecated and will be removed in a future version._ [Effective January 27, 2026](https://aws.amazon.com/blogs/big-data/migrate-from-amazon-kinesis-data-analytics-for-sql-to-amazon-managed-service-for-apache-flink-and-amazon-managed-service-for-apache-flink-studio/), AWS will [no longer support](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/discontinuation.html) Amazon Kinesis Data Analytics for SQL. Use the `aws.kinesisanalyticsv2.Application` resource instead to manage Amazon Kinesis Data Analytics for Apache Flink applications. AWS provides guidance for migrating from [Amazon Kinesis Data Analytics for SQL Applications to Amazon Managed Service for Apache Flink Studio](https://aws.amazon.com/blogs/big-data/migrate-from-amazon-kinesis-data-analytics-for-sql-applications-to-amazon-managed-service-for-apache-flink-studio/) including [examples](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/migrating-to-kda-studio-overview.html).
///
/// > **Note:** To manage Amazon Kinesis Data Analytics for Apache Flink applications, use the `aws.kinesisanalyticsv2.Application` resource.
///
/// ## Example Usage
///
/// ### Kinesis Stream Input
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testStream = new aws.kinesis.Stream("test_stream", {
///     name: "kinesis-test",
///     shardCount: 1,
/// });
/// const testApplication = new aws.kinesis.AnalyticsApplication("test_application", {
///     name: "kinesis-analytics-application-test",
///     inputs: {
///         namePrefix: "test_prefix",
///         kinesisStream: {
///             resourceArn: testStream.arn,
///             roleArn: test.arn,
///         },
///         parallelism: {
///             count: 1,
///         },
///         schema: {
///             recordColumns: [{
///                 mapping: "$.test",
///                 name: "test",
///                 sqlType: "VARCHAR(8)",
///             }],
///             recordEncoding: "UTF-8",
///             recordFormat: {
///                 mappingParameters: {
///                     json: {
///                         recordRowPath: "$",
///                     },
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_stream = aws.kinesis.Stream("test_stream",
///     name="kinesis-test",
///     shard_count=1)
/// test_application = aws.kinesis.AnalyticsApplication("test_application",
///     name="kinesis-analytics-application-test",
///     inputs={
///         "name_prefix": "test_prefix",
///         "kinesis_stream": {
///             "resource_arn": test_stream.arn,
///             "role_arn": test["arn"],
///         },
///         "parallelism": {
///             "count": 1,
///         },
///         "schema": {
///             "record_columns": [{
///                 "mapping": "$.test",
///                 "name": "test",
///                 "sql_type": "VARCHAR(8)",
///             }],
///             "record_encoding": "UTF-8",
///             "record_format": {
///                 "mapping_parameters": {
///                     "json": {
///                         "record_row_path": "$",
///                     },
///                 },
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testStream = new Aws.Kinesis.Stream("test_stream", new()
///     {
///         Name = "kinesis-test",
///         ShardCount = 1,
///     });
///
///     var testApplication = new Aws.Kinesis.AnalyticsApplication("test_application", new()
///     {
///         Name = "kinesis-analytics-application-test",
///         Inputs = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsArgs
///         {
///             NamePrefix = "test_prefix",
///             KinesisStream = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsKinesisStreamArgs
///             {
///                 ResourceArn = testStream.Arn,
///                 RoleArn = test.Arn,
///             },
///             Parallelism = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsParallelismArgs
///             {
///                 Count = 1,
///             },
///             Schema = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsSchemaArgs
///             {
///                 RecordColumns = new[]
///                 {
///                     new Aws.Kinesis.Inputs.AnalyticsApplicationInputsSchemaRecordColumnArgs
///                     {
///                         Mapping = "$.test",
///                         Name = "test",
///                         SqlType = "VARCHAR(8)",
///                     },
///                 },
///                 RecordEncoding = "UTF-8",
///                 RecordFormat = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsSchemaRecordFormatArgs
///                 {
///                     MappingParameters = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsSchemaRecordFormatMappingParametersArgs
///                     {
///                         Json = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJsonArgs
///                         {
///                             RecordRowPath = "$",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testStream, err := kinesis.NewStream(ctx, "test_stream", &kinesis.StreamArgs{
/// 			Name:       pulumi.String("kinesis-test"),
/// 			ShardCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesis.NewAnalyticsApplication(ctx, "test_application", &kinesis.AnalyticsApplicationArgs{
/// 			Name: pulumi.String("kinesis-analytics-application-test"),
/// 			Inputs: &kinesis.AnalyticsApplicationInputsArgs{
/// 				NamePrefix: pulumi.String("test_prefix"),
/// 				KinesisStream: &kinesis.AnalyticsApplicationInputsKinesisStreamArgs{
/// 					ResourceArn: testStream.Arn,
/// 					RoleArn:     pulumi.Any(test.Arn),
/// 				},
/// 				Parallelism: &kinesis.AnalyticsApplicationInputsParallelismArgs{
/// 					Count: pulumi.Int(1),
/// 				},
/// 				Schema: &kinesis.AnalyticsApplicationInputsSchemaArgs{
/// 					RecordColumns: kinesis.AnalyticsApplicationInputsSchemaRecordColumnArray{
/// 						&kinesis.AnalyticsApplicationInputsSchemaRecordColumnArgs{
/// 							Mapping: pulumi.String("$.test"),
/// 							Name:    pulumi.String("test"),
/// 							SqlType: pulumi.String("VARCHAR(8)"),
/// 						},
/// 					},
/// 					RecordEncoding: pulumi.String("UTF-8"),
/// 					RecordFormat: &kinesis.AnalyticsApplicationInputsSchemaRecordFormatArgs{
/// 						MappingParameters: &kinesis.AnalyticsApplicationInputsSchemaRecordFormatMappingParametersArgs{
/// 							Json: &kinesis.AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJsonArgs{
/// 								RecordRowPath: pulumi.String("$"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.kinesis.AnalyticsApplication;
/// import com.pulumi.aws.kinesis.AnalyticsApplicationArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsKinesisStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsParallelismArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsSchemaArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsSchemaRecordFormatArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsSchemaRecordFormatMappingParametersArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJsonArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var testStream = new Stream("testStream", StreamArgs.builder()
///             .name("kinesis-test")
///             .shardCount(1)
///             .build());
///
///         var testApplication = new AnalyticsApplication("testApplication", AnalyticsApplicationArgs.builder()
///             .name("kinesis-analytics-application-test")
///             .inputs(AnalyticsApplicationInputsArgs.builder()
///                 .namePrefix("test_prefix")
///                 .kinesisStream(AnalyticsApplicationInputsKinesisStreamArgs.builder()
///                     .resourceArn(testStream.arn())
///                     .roleArn(test.arn())
///                     .build())
///                 .parallelism(AnalyticsApplicationInputsParallelismArgs.builder()
///                     .count(1)
///                     .build())
///                 .schema(AnalyticsApplicationInputsSchemaArgs.builder()
///                     .recordColumns(AnalyticsApplicationInputsSchemaRecordColumnArgs.builder()
///                         .mapping("$.test")
///                         .name("test")
///                         .sqlType("VARCHAR(8)")
///                         .build())
///                     .recordEncoding("UTF-8")
///                     .recordFormat(AnalyticsApplicationInputsSchemaRecordFormatArgs.builder()
///                         .mappingParameters(AnalyticsApplicationInputsSchemaRecordFormatMappingParametersArgs.builder()
///                             .json(AnalyticsApplicationInputsSchemaRecordFormatMappingParametersJsonArgs.builder()
///                                 .recordRowPath("$")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testStream:
///     type: aws:kinesis:Stream
///     name: test_stream
///     properties:
///       name: kinesis-test
///       shardCount: 1
///   testApplication:
///     type: aws:kinesis:AnalyticsApplication
///     name: test_application
///     properties:
///       name: kinesis-analytics-application-test
///       inputs:
///         namePrefix: test_prefix
///         kinesisStream:
///           resourceArn: ${testStream.arn}
///           roleArn: ${test.arn}
///         parallelism:
///           count: 1
///         schema:
///           recordColumns:
///             - mapping: $.test
///               name: test
///               sqlType: VARCHAR(8)
///           recordEncoding: UTF-8
///           recordFormat:
///             mappingParameters:
///               json:
///                 recordRowPath: $
/// ```
///
///
/// ### Starting An Application
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {name: "analytics"});
/// const exampleLogStream = new aws.cloudwatch.LogStream("example", {
///     name: "example-kinesis-application",
///     logGroupName: example.name,
/// });
/// const exampleStream = new aws.kinesis.Stream("example", {
///     name: "example-kinesis-stream",
///     shardCount: 1,
/// });
/// const exampleFirehoseDeliveryStream = new aws.kinesis.FirehoseDeliveryStream("example", {
///     name: "example-kinesis-delivery-stream",
///     destination: "extended_s3",
///     extendedS3Configuration: {
///         bucketArn: exampleAwsS3Bucket.arn,
///         roleArn: exampleAwsIamRole.arn,
///     },
/// });
/// const test = new aws.kinesis.AnalyticsApplication("test", {
///     name: "example-application",
///     cloudwatchLoggingOptions: {
///         logStreamArn: exampleLogStream.arn,
///         roleArn: exampleAwsIamRole.arn,
///     },
///     inputs: {
///         namePrefix: "example_prefix",
///         schema: {
///             recordColumns: [{
///                 name: "COLUMN_1",
///                 sqlType: "INTEGER",
///             }],
///             recordFormat: {
///                 mappingParameters: {
///                     csv: {
///                         recordColumnDelimiter: ",",
///                         recordRowDelimiter: "|",
///                     },
///                 },
///             },
///         },
///         kinesisStream: {
///             resourceArn: exampleStream.arn,
///             roleArn: exampleAwsIamRole.arn,
///         },
///         startingPositionConfigurations: [{
///             startingPosition: "NOW",
///         }],
///     },
///     outputs: [{
///         name: "OUTPUT_1",
///         schema: {
///             recordFormatType: "CSV",
///         },
///         kinesisFirehose: {
///             resourceArn: exampleFirehoseDeliveryStream.arn,
///             roleArn: exampleAwsIamRole.arn,
///         },
///     }],
///     startApplication: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example", name="analytics")
/// example_log_stream = aws.cloudwatch.LogStream("example",
///     name="example-kinesis-application",
///     log_group_name=example.name)
/// example_stream = aws.kinesis.Stream("example",
///     name="example-kinesis-stream",
///     shard_count=1)
/// example_firehose_delivery_stream = aws.kinesis.FirehoseDeliveryStream("example",
///     name="example-kinesis-delivery-stream",
///     destination="extended_s3",
///     extended_s3_configuration={
///         "bucket_arn": example_aws_s3_bucket["arn"],
///         "role_arn": example_aws_iam_role["arn"],
///     })
/// test = aws.kinesis.AnalyticsApplication("test",
///     name="example-application",
///     cloudwatch_logging_options={
///         "log_stream_arn": example_log_stream.arn,
///         "role_arn": example_aws_iam_role["arn"],
///     },
///     inputs={
///         "name_prefix": "example_prefix",
///         "schema": {
///             "record_columns": [{
///                 "name": "COLUMN_1",
///                 "sql_type": "INTEGER",
///             }],
///             "record_format": {
///                 "mapping_parameters": {
///                     "csv": {
///                         "record_column_delimiter": ",",
///                         "record_row_delimiter": "|",
///                     },
///                 },
///             },
///         },
///         "kinesis_stream": {
///             "resource_arn": example_stream.arn,
///             "role_arn": example_aws_iam_role["arn"],
///         },
///         "starting_position_configurations": [{
///             "starting_position": "NOW",
///         }],
///     },
///     outputs=[{
///         "name": "OUTPUT_1",
///         "schema": {
///             "record_format_type": "CSV",
///         },
///         "kinesis_firehose": {
///             "resource_arn": example_firehose_delivery_stream.arn,
///             "role_arn": example_aws_iam_role["arn"],
///         },
///     }],
///     start_application=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "analytics",
///     });
///
///     var exampleLogStream = new Aws.CloudWatch.LogStream("example", new()
///     {
///         Name = "example-kinesis-application",
///         LogGroupName = example.Name,
///     });
///
///     var exampleStream = new Aws.Kinesis.Stream("example", new()
///     {
///         Name = "example-kinesis-stream",
///         ShardCount = 1,
///     });
///
///     var exampleFirehoseDeliveryStream = new Aws.Kinesis.FirehoseDeliveryStream("example", new()
///     {
///         Name = "example-kinesis-delivery-stream",
///         Destination = "extended_s3",
///         ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
///         {
///             BucketArn = exampleAwsS3Bucket.Arn,
///             RoleArn = exampleAwsIamRole.Arn,
///         },
///     });
///
///     var test = new Aws.Kinesis.AnalyticsApplication("test", new()
///     {
///         Name = "example-application",
///         CloudwatchLoggingOptions = new Aws.Kinesis.Inputs.AnalyticsApplicationCloudwatchLoggingOptionsArgs
///         {
///             LogStreamArn = exampleLogStream.Arn,
///             RoleArn = exampleAwsIamRole.Arn,
///         },
///         Inputs = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsArgs
///         {
///             NamePrefix = "example_prefix",
///             Schema = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsSchemaArgs
///             {
///                 RecordColumns = new[]
///                 {
///                     new Aws.Kinesis.Inputs.AnalyticsApplicationInputsSchemaRecordColumnArgs
///                     {
///                         Name = "COLUMN_1",
///                         SqlType = "INTEGER",
///                     },
///                 },
///                 RecordFormat = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsSchemaRecordFormatArgs
///                 {
///                     MappingParameters = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsSchemaRecordFormatMappingParametersArgs
///                     {
///                         Csv = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsvArgs
///                         {
///                             RecordColumnDelimiter = ",",
///                             RecordRowDelimiter = "|",
///                         },
///                     },
///                 },
///             },
///             KinesisStream = new Aws.Kinesis.Inputs.AnalyticsApplicationInputsKinesisStreamArgs
///             {
///                 ResourceArn = exampleStream.Arn,
///                 RoleArn = exampleAwsIamRole.Arn,
///             },
///             StartingPositionConfigurations = new[]
///             {
///                 new Aws.Kinesis.Inputs.AnalyticsApplicationInputsStartingPositionConfigurationArgs
///                 {
///                     StartingPosition = "NOW",
///                 },
///             },
///         },
///         Outputs = new[]
///         {
///             new Aws.Kinesis.Inputs.AnalyticsApplicationOutputArgs
///             {
///                 Name = "OUTPUT_1",
///                 Schema = new Aws.Kinesis.Inputs.AnalyticsApplicationOutputSchemaArgs
///                 {
///                     RecordFormatType = "CSV",
///                 },
///                 KinesisFirehose = new Aws.Kinesis.Inputs.AnalyticsApplicationOutputKinesisFirehoseArgs
///                 {
///                     ResourceArn = exampleFirehoseDeliveryStream.Arn,
///                     RoleArn = exampleAwsIamRole.Arn,
///                 },
///             },
///         },
///         StartApplication = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("analytics"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogStream, err := cloudwatch.NewLogStream(ctx, "example", &cloudwatch.LogStreamArgs{
/// 			Name:         pulumi.String("example-kinesis-application"),
/// 			LogGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStream, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// 			Name:       pulumi.String("example-kinesis-stream"),
/// 			ShardCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFirehoseDeliveryStream, err := kinesis.NewFirehoseDeliveryStream(ctx, "example", &kinesis.FirehoseDeliveryStreamArgs{
/// 			Name:        pulumi.String("example-kinesis-delivery-stream"),
/// 			Destination: pulumi.String("extended_s3"),
/// 			ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// 				BucketArn: pulumi.Any(exampleAwsS3Bucket.Arn),
/// 				RoleArn:   pulumi.Any(exampleAwsIamRole.Arn),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesis.NewAnalyticsApplication(ctx, "test", &kinesis.AnalyticsApplicationArgs{
/// 			Name: pulumi.String("example-application"),
/// 			CloudwatchLoggingOptions: &kinesis.AnalyticsApplicationCloudwatchLoggingOptionsArgs{
/// 				LogStreamArn: exampleLogStream.Arn,
/// 				RoleArn:      pulumi.Any(exampleAwsIamRole.Arn),
/// 			},
/// 			Inputs: &kinesis.AnalyticsApplicationInputsArgs{
/// 				NamePrefix: pulumi.String("example_prefix"),
/// 				Schema: &kinesis.AnalyticsApplicationInputsSchemaArgs{
/// 					RecordColumns: kinesis.AnalyticsApplicationInputsSchemaRecordColumnArray{
/// 						&kinesis.AnalyticsApplicationInputsSchemaRecordColumnArgs{
/// 							Name:    pulumi.String("COLUMN_1"),
/// 							SqlType: pulumi.String("INTEGER"),
/// 						},
/// 					},
/// 					RecordFormat: &kinesis.AnalyticsApplicationInputsSchemaRecordFormatArgs{
/// 						MappingParameters: &kinesis.AnalyticsApplicationInputsSchemaRecordFormatMappingParametersArgs{
/// 							Csv: &kinesis.AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsvArgs{
/// 								RecordColumnDelimiter: pulumi.String(","),
/// 								RecordRowDelimiter:    pulumi.String("|"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				KinesisStream: &kinesis.AnalyticsApplicationInputsKinesisStreamArgs{
/// 					ResourceArn: exampleStream.Arn,
/// 					RoleArn:     pulumi.Any(exampleAwsIamRole.Arn),
/// 				},
/// 				StartingPositionConfigurations: kinesis.AnalyticsApplicationInputsStartingPositionConfigurationArray{
/// 					&kinesis.AnalyticsApplicationInputsStartingPositionConfigurationArgs{
/// 						StartingPosition: pulumi.String("NOW"),
/// 					},
/// 				},
/// 			},
/// 			Outputs: kinesis.AnalyticsApplicationOutputTypeArray{
/// 				&kinesis.AnalyticsApplicationOutputTypeArgs{
/// 					Name: pulumi.String("OUTPUT_1"),
/// 					Schema: &kinesis.AnalyticsApplicationOutputSchemaArgs{
/// 						RecordFormatType: pulumi.String("CSV"),
/// 					},
/// 					KinesisFirehose: &kinesis.AnalyticsApplicationOutputKinesisFirehoseArgs{
/// 						ResourceArn: exampleFirehoseDeliveryStream.Arn,
/// 						RoleArn:     pulumi.Any(exampleAwsIamRole.Arn),
/// 					},
/// 				},
/// 			},
/// 			StartApplication: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudwatch.LogStream;
/// import com.pulumi.aws.cloudwatch.LogStreamArgs;
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.AnalyticsApplication;
/// import com.pulumi.aws.kinesis.AnalyticsApplicationArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationCloudwatchLoggingOptionsArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsSchemaArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsSchemaRecordFormatArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsSchemaRecordFormatMappingParametersArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsvArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationInputsKinesisStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationOutputArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationOutputSchemaArgs;
/// import com.pulumi.aws.kinesis.inputs.AnalyticsApplicationOutputKinesisFirehoseArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new LogGroup("example", LogGroupArgs.builder()
///             .name("analytics")
///             .build());
///
///         var exampleLogStream = new LogStream("exampleLogStream", LogStreamArgs.builder()
///             .name("example-kinesis-application")
///             .logGroupName(example.name())
///             .build());
///
///         var exampleStream = new Stream("exampleStream", StreamArgs.builder()
///             .name("example-kinesis-stream")
///             .shardCount(1)
///             .build());
///
///         var exampleFirehoseDeliveryStream = new FirehoseDeliveryStream("exampleFirehoseDeliveryStream", FirehoseDeliveryStreamArgs.builder()
///             .name("example-kinesis-delivery-stream")
///             .destination("extended_s3")
///             .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
///                 .bucketArn(exampleAwsS3Bucket.arn())
///                 .roleArn(exampleAwsIamRole.arn())
///                 .build())
///             .build());
///
///         var test = new AnalyticsApplication("test", AnalyticsApplicationArgs.builder()
///             .name("example-application")
///             .cloudwatchLoggingOptions(AnalyticsApplicationCloudwatchLoggingOptionsArgs.builder()
///                 .logStreamArn(exampleLogStream.arn())
///                 .roleArn(exampleAwsIamRole.arn())
///                 .build())
///             .inputs(AnalyticsApplicationInputsArgs.builder()
///                 .namePrefix("example_prefix")
///                 .schema(AnalyticsApplicationInputsSchemaArgs.builder()
///                     .recordColumns(AnalyticsApplicationInputsSchemaRecordColumnArgs.builder()
///                         .name("COLUMN_1")
///                         .sqlType("INTEGER")
///                         .build())
///                     .recordFormat(AnalyticsApplicationInputsSchemaRecordFormatArgs.builder()
///                         .mappingParameters(AnalyticsApplicationInputsSchemaRecordFormatMappingParametersArgs.builder()
///                             .csv(AnalyticsApplicationInputsSchemaRecordFormatMappingParametersCsvArgs.builder()
///                                 .recordColumnDelimiter(",")
///                                 .recordRowDelimiter("|")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .kinesisStream(AnalyticsApplicationInputsKinesisStreamArgs.builder()
///                     .resourceArn(exampleStream.arn())
///                     .roleArn(exampleAwsIamRole.arn())
///                     .build())
///                 .startingPositionConfigurations(AnalyticsApplicationInputsStartingPositionConfigurationArgs.builder()
///                     .startingPosition("NOW")
///                     .build())
///                 .build())
///             .outputs(AnalyticsApplicationOutputArgs.builder()
///                 .name("OUTPUT_1")
///                 .schema(AnalyticsApplicationOutputSchemaArgs.builder()
///                     .recordFormatType("CSV")
///                     .build())
///                 .kinesisFirehose(AnalyticsApplicationOutputKinesisFirehoseArgs.builder()
///                     .resourceArn(exampleFirehoseDeliveryStream.arn())
///                     .roleArn(exampleAwsIamRole.arn())
///                     .build())
///                 .build())
///             .startApplication(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: analytics
///   exampleLogStream:
///     type: aws:cloudwatch:LogStream
///     name: example
///     properties:
///       name: example-kinesis-application
///       logGroupName: ${example.name}
///   exampleStream:
///     type: aws:kinesis:Stream
///     name: example
///     properties:
///       name: example-kinesis-stream
///       shardCount: 1
///   exampleFirehoseDeliveryStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: example
///     properties:
///       name: example-kinesis-delivery-stream
///       destination: extended_s3
///       extendedS3Configuration:
///         bucketArn: ${exampleAwsS3Bucket.arn}
///         roleArn: ${exampleAwsIamRole.arn}
///   test:
///     type: aws:kinesis:AnalyticsApplication
///     properties:
///       name: example-application
///       cloudwatchLoggingOptions:
///         logStreamArn: ${exampleLogStream.arn}
///         roleArn: ${exampleAwsIamRole.arn}
///       inputs:
///         namePrefix: example_prefix
///         schema:
///           recordColumns:
///             - name: COLUMN_1
///               sqlType: INTEGER
///           recordFormat:
///             mappingParameters:
///               csv:
///                 recordColumnDelimiter: ','
///                 recordRowDelimiter: '|'
///         kinesisStream:
///           resourceArn: ${exampleStream.arn}
///           roleArn: ${exampleAwsIamRole.arn}
///         startingPositionConfigurations:
///           - startingPosition: NOW
///       outputs:
///         - name: OUTPUT_1
///           schema:
///             recordFormatType: CSV
///           kinesisFirehose:
///             resourceArn: ${exampleFirehoseDeliveryStream.arn}
///             roleArn: ${exampleAwsIamRole.arn}
///       startApplication: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Kinesis Analytics Application using ARN. For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/analyticsApplication:AnalyticsApplication example arn:aws:kinesisanalytics:us-west-2:1234567890:application/example
/// ```
class AnalyticsApplication extends pulumi.CustomResource {
  /// The ARN of the Kinesis Analytics Appliation.
  late final pulumi.Output<String> arn;

  /// The CloudWatch log stream options to monitor application errors.
  /// See CloudWatch Logging Options below for more details.
  late final pulumi.Output<AnalyticsApplicationCloudwatchLoggingOptions?>
  cloudwatchLoggingOptions;

  /// SQL Code to transform input data, and generate output.
  late final pulumi.Output<String?> code;

  /// The Timestamp when the application version was created.
  late final pulumi.Output<String> createTimestamp;

  /// Description of the application.
  late final pulumi.Output<String?> description;

  /// Input configuration of the application. See Inputs below for more details.
  late final pulumi.Output<AnalyticsApplicationInputs?> inputs;

  /// The Timestamp when the application was last updated.
  late final pulumi.Output<String> lastUpdateTimestamp;

  /// Name of the Kinesis Analytics Application.
  late final pulumi.Output<String> name;

  /// Output destination configuration of the application. See Outputs below for more details.
  late final pulumi.Output<List<AnalyticsApplicationOutput>?> outputs;

  /// An S3 Reference Data Source for the application.
  /// See Reference Data Sources below for more details.
  late final pulumi.Output<AnalyticsApplicationReferenceDataSources?>
  referenceDataSources;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether to start or stop the Kinesis Analytics Application. To start an application, an input with a defined `starting_position` must be configured.
  /// To modify an application's starting position, first stop the application by setting `start_application = false`, then update `starting_position` and set `start_application = true`.
  late final pulumi.Output<bool?> startApplication;

  /// The Status of the application.
  late final pulumi.Output<String> status;

  /// Key-value map of tags for the Kinesis Analytics Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The Version of the application.
  late final pulumi.Output<int> version;

  /// Creates a new [AnalyticsApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnalyticsApplication]. {@macro pulumi_kinesis_analytics_application_analytics_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnalyticsApplication(
    String name, {
    AnalyticsApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:kinesis/analyticsApplication:AnalyticsApplication',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.cloudwatchLoggingOptions =
        registerOutput<AnalyticsApplicationCloudwatchLoggingOptions?>(
          'cloudwatchLoggingOptions',
        );
    this.code = registerOutput<String?>('code');
    this.createTimestamp = registerOutput<String>('createTimestamp');
    this.description = registerOutput<String?>('description');
    this.inputs = registerOutput<AnalyticsApplicationInputs?>('inputs');
    this.lastUpdateTimestamp = registerOutput<String>('lastUpdateTimestamp');
    this.name = registerOutput<String>('name');
    this.outputs = registerOutput<List<AnalyticsApplicationOutput>?>('outputs');
    this.referenceDataSources =
        registerOutput<AnalyticsApplicationReferenceDataSources?>(
          'referenceDataSources',
        );
    this.region = registerOutput<String>('region');
    this.startApplication = registerOutput<bool?>('startApplication');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<int>('version');
  }
}
