import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration.dart';
import 'application_args.dart';
import 'application_cloudwatch_logging_options.dart';

/// Manages a Kinesis Analytics v2 Application.
/// This resource can be used to manage both Kinesis Data Analytics for SQL applications and Kinesis Data Analytics for Apache Flink applications.
///
/// > **Note:** Kinesis Data Analytics for SQL applications created using this resource cannot currently be viewed in the AWS Console. To manage Kinesis Data Analytics for SQL applications that can also be viewed in the AWS Console, use the `aws.kinesis.AnalyticsApplication` resource.
///
/// ## Example Usage
///
/// ### Apache Flink Application
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example-flink-application"});
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
///     bucket: example.id,
///     key: "example-flink-application",
///     source: new pulumi.asset.FileAsset("flink-app.jar"),
/// });
/// const exampleApplication = new aws.kinesisanalyticsv2.Application("example", {
///     name: "example-flink-application",
///     runtimeEnvironment: "FLINK-1_8",
///     serviceExecutionRole: exampleAwsIamRole.arn,
///     applicationConfiguration: {
///         applicationCodeConfiguration: {
///             codeContent: {
///                 s3ContentLocation: {
///                     bucketArn: example.arn,
///                     fileKey: exampleBucketObjectv2.key,
///                 },
///             },
///             codeContentType: "ZIPFILE",
///         },
///         environmentProperties: {
///             propertyGroups: [
///                 {
///                     propertyGroupId: "PROPERTY-GROUP-1",
///                     propertyMap: {
///                         Key1: "Value1",
///                     },
///                 },
///                 {
///                     propertyGroupId: "PROPERTY-GROUP-2",
///                     propertyMap: {
///                         KeyA: "ValueA",
///                         KeyB: "ValueB",
///                     },
///                 },
///             ],
///         },
///         flinkApplicationConfiguration: {
///             checkpointConfiguration: {
///                 configurationType: "DEFAULT",
///             },
///             monitoringConfiguration: {
///                 configurationType: "CUSTOM",
///                 logLevel: "DEBUG",
///                 metricsLevel: "TASK",
///             },
///             parallelismConfiguration: {
///                 autoScalingEnabled: true,
///                 configurationType: "CUSTOM",
///                 parallelism: 10,
///                 parallelismPerKpu: 4,
///             },
///         },
///     },
///     tags: {
///         Environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example-flink-application")
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
///     bucket=example.id,
///     key="example-flink-application",
///     source=pulumi.FileAsset("flink-app.jar"))
/// example_application = aws.kinesisanalyticsv2.Application("example",
///     name="example-flink-application",
///     runtime_environment="FLINK-1_8",
///     service_execution_role=example_aws_iam_role["arn"],
///     application_configuration={
///         "application_code_configuration": {
///             "code_content": {
///                 "s3_content_location": {
///                     "bucket_arn": example.arn,
///                     "file_key": example_bucket_objectv2.key,
///                 },
///             },
///             "code_content_type": "ZIPFILE",
///         },
///         "environment_properties": {
///             "property_groups": [
///                 {
///                     "property_group_id": "PROPERTY-GROUP-1",
///                     "property_map": {
///                         "Key1": "Value1",
///                     },
///                 },
///                 {
///                     "property_group_id": "PROPERTY-GROUP-2",
///                     "property_map": {
///                         "KeyA": "ValueA",
///                         "KeyB": "ValueB",
///                     },
///                 },
///             ],
///         },
///         "flink_application_configuration": {
///             "checkpoint_configuration": {
///                 "configuration_type": "DEFAULT",
///             },
///             "monitoring_configuration": {
///                 "configuration_type": "CUSTOM",
///                 "log_level": "DEBUG",
///                 "metrics_level": "TASK",
///             },
///             "parallelism_configuration": {
///                 "auto_scaling_enabled": True,
///                 "configuration_type": "CUSTOM",
///                 "parallelism": 10,
///                 "parallelism_per_kpu": 4,
///             },
///         },
///     },
///     tags={
///         "Environment": "test",
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
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-flink-application",
///     });
///
///     var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
///     {
///         Bucket = example.Id,
///         Key = "example-flink-application",
///         Source = new FileAsset("flink-app.jar"),
///     });
///
///     var exampleApplication = new Aws.KinesisAnalyticsV2.Application("example", new()
///     {
///         Name = "example-flink-application",
///         RuntimeEnvironment = "FLINK-1_8",
///         ServiceExecutionRole = exampleAwsIamRole.Arn,
///         ApplicationConfiguration = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationArgs
///         {
///             ApplicationCodeConfiguration = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationArgs
///             {
///                 CodeContent = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentArgs
///                 {
///                     S3ContentLocation = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocationArgs
///                     {
///                         BucketArn = example.Arn,
///                         FileKey = exampleBucketObjectv2.Key,
///                     },
///                 },
///                 CodeContentType = "ZIPFILE",
///             },
///             EnvironmentProperties = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationEnvironmentPropertiesArgs
///             {
///                 PropertyGroups = new[]
///                 {
///                     new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroupArgs
///                     {
///                         PropertyGroupId = "PROPERTY-GROUP-1",
///                         PropertyMap =
///                         {
///                             { "Key1", "Value1" },
///                         },
///                     },
///                     new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroupArgs
///                     {
///                         PropertyGroupId = "PROPERTY-GROUP-2",
///                         PropertyMap =
///                         {
///                             { "KeyA", "ValueA" },
///                             { "KeyB", "ValueB" },
///                         },
///                     },
///                 },
///             },
///             FlinkApplicationConfiguration = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationFlinkApplicationConfigurationArgs
///             {
///                 CheckpointConfiguration = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfigurationArgs
///                 {
///                     ConfigurationType = "DEFAULT",
///                 },
///                 MonitoringConfiguration = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfigurationArgs
///                 {
///                     ConfigurationType = "CUSTOM",
///                     LogLevel = "DEBUG",
///                     MetricsLevel = "TASK",
///                 },
///                 ParallelismConfiguration = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfigurationArgs
///                 {
///                     AutoScalingEnabled = true,
///                     ConfigurationType = "CUSTOM",
///                     Parallelism = 10,
///                     ParallelismPerKpu = 4,
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Environment", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesisanalyticsv2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example-flink-application"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketObjectv2, err := s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// 			Bucket: example.ID(),
/// 			Key:    pulumi.String("example-flink-application"),
/// 			Source: pulumi.NewFileAsset("flink-app.jar"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesisanalyticsv2.NewApplication(ctx, "example", &kinesisanalyticsv2.ApplicationArgs{
/// 			Name:                 pulumi.String("example-flink-application"),
/// 			RuntimeEnvironment:   pulumi.String("FLINK-1_8"),
/// 			ServiceExecutionRole: pulumi.Any(exampleAwsIamRole.Arn),
/// 			ApplicationConfiguration: &kinesisanalyticsv2.ApplicationApplicationConfigurationArgs{
/// 				ApplicationCodeConfiguration: &kinesisanalyticsv2.ApplicationApplicationConfigurationApplicationCodeConfigurationArgs{
/// 					CodeContent: &kinesisanalyticsv2.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentArgs{
/// 						S3ContentLocation: &kinesisanalyticsv2.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocationArgs{
/// 							BucketArn: example.Arn,
/// 							FileKey:   exampleBucketObjectv2.Key,
/// 						},
/// 					},
/// 					CodeContentType: pulumi.String("ZIPFILE"),
/// 				},
/// 				EnvironmentProperties: &kinesisanalyticsv2.ApplicationApplicationConfigurationEnvironmentPropertiesArgs{
/// 					PropertyGroups: kinesisanalyticsv2.ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroupArray{
/// 						&kinesisanalyticsv2.ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroupArgs{
/// 							PropertyGroupId: pulumi.String("PROPERTY-GROUP-1"),
/// 							PropertyMap: pulumi.StringMap{
/// 								"Key1": pulumi.String("Value1"),
/// 							},
/// 						},
/// 						&kinesisanalyticsv2.ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroupArgs{
/// 							PropertyGroupId: pulumi.String("PROPERTY-GROUP-2"),
/// 							PropertyMap: pulumi.StringMap{
/// 								"KeyA": pulumi.String("ValueA"),
/// 								"KeyB": pulumi.String("ValueB"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				FlinkApplicationConfiguration: &kinesisanalyticsv2.ApplicationApplicationConfigurationFlinkApplicationConfigurationArgs{
/// 					CheckpointConfiguration: &kinesisanalyticsv2.ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfigurationArgs{
/// 						ConfigurationType: pulumi.String("DEFAULT"),
/// 					},
/// 					MonitoringConfiguration: &kinesisanalyticsv2.ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfigurationArgs{
/// 						ConfigurationType: pulumi.String("CUSTOM"),
/// 						LogLevel:          pulumi.String("DEBUG"),
/// 						MetricsLevel:      pulumi.String("TASK"),
/// 					},
/// 					ParallelismConfiguration: &kinesisanalyticsv2.ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfigurationArgs{
/// 						AutoScalingEnabled: pulumi.Bool(true),
/// 						ConfigurationType:  pulumi.String("CUSTOM"),
/// 						Parallelism:        pulumi.Int(10),
/// 						ParallelismPerKpu:  pulumi.Int(4),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("test"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.kinesisanalyticsv2.Application;
/// import com.pulumi.aws.kinesisanalyticsv2.ApplicationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationEnvironmentPropertiesArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationFlinkApplicationConfigurationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfigurationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfigurationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfigurationArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example-flink-application")
///             .build());
///
///         var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
///             .bucket(example.id())
///             .key("example-flink-application")
///             .source(new FileAsset("flink-app.jar"))
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("example-flink-application")
///             .runtimeEnvironment("FLINK-1_8")
///             .serviceExecutionRole(exampleAwsIamRole.arn())
///             .applicationConfiguration(ApplicationApplicationConfigurationArgs.builder()
///                 .applicationCodeConfiguration(ApplicationApplicationConfigurationApplicationCodeConfigurationArgs.builder()
///                     .codeContent(ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentArgs.builder()
///                         .s3ContentLocation(ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocationArgs.builder()
///                             .bucketArn(example.arn())
///                             .fileKey(exampleBucketObjectv2.key())
///                             .build())
///                         .build())
///                     .codeContentType("ZIPFILE")
///                     .build())
///                 .environmentProperties(ApplicationApplicationConfigurationEnvironmentPropertiesArgs.builder()
///                     .propertyGroups(
///                         ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroupArgs.builder()
///                             .propertyGroupId("PROPERTY-GROUP-1")
///                             .propertyMap(Map.of("Key1", "Value1"))
///                             .build(),
///                         ApplicationApplicationConfigurationEnvironmentPropertiesPropertyGroupArgs.builder()
///                             .propertyGroupId("PROPERTY-GROUP-2")
///                             .propertyMap(Map.ofEntries(
///                                 Map.entry("KeyA", "ValueA"),
///                                 Map.entry("KeyB", "ValueB")
///                             ))
///                             .build())
///                     .build())
///                 .flinkApplicationConfiguration(ApplicationApplicationConfigurationFlinkApplicationConfigurationArgs.builder()
///                     .checkpointConfiguration(ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfigurationArgs.builder()
///                         .configurationType("DEFAULT")
///                         .build())
///                     .monitoringConfiguration(ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfigurationArgs.builder()
///                         .configurationType("CUSTOM")
///                         .logLevel("DEBUG")
///                         .metricsLevel("TASK")
///                         .build())
///                     .parallelismConfiguration(ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfigurationArgs.builder()
///                         .autoScalingEnabled(true)
///                         .configurationType("CUSTOM")
///                         .parallelism(10)
///                         .parallelismPerKpu(4)
///                         .build())
///                     .build())
///                 .build())
///             .tags(Map.of("Environment", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example-flink-application
///   exampleBucketObjectv2:
///     type: aws:s3:BucketObjectv2
///     name: example
///     properties:
///       bucket: ${example.id}
///       key: example-flink-application
///       source:
///         fn::FileAsset: flink-app.jar
///   exampleApplication:
///     type: aws:kinesisanalyticsv2:Application
///     name: example
///     properties:
///       name: example-flink-application
///       runtimeEnvironment: FLINK-1_8
///       serviceExecutionRole: ${exampleAwsIamRole.arn}
///       applicationConfiguration:
///         applicationCodeConfiguration:
///           codeContent:
///             s3ContentLocation:
///               bucketArn: ${example.arn}
///               fileKey: ${exampleBucketObjectv2.key}
///           codeContentType: ZIPFILE
///         environmentProperties:
///           propertyGroups:
///             - propertyGroupId: PROPERTY-GROUP-1
///               propertyMap:
///                 Key1: Value1
///             - propertyGroupId: PROPERTY-GROUP-2
///               propertyMap:
///                 KeyA: ValueA
///                 KeyB: ValueB
///         flinkApplicationConfiguration:
///           checkpointConfiguration:
///             configurationType: DEFAULT
///           monitoringConfiguration:
///             configurationType: CUSTOM
///             logLevel: DEBUG
///             metricsLevel: TASK
///           parallelismConfiguration:
///             autoScalingEnabled: true
///             configurationType: CUSTOM
///             parallelism: 10
///             parallelismPerKpu: 4
///       tags:
///         Environment: test
/// ```
///
///
/// ### SQL Application
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {name: "example-sql-application"});
/// const exampleLogStream = new aws.cloudwatch.LogStream("example", {
///     name: "example-sql-application",
///     logGroupName: example.name,
/// });
/// const exampleApplication = new aws.kinesisanalyticsv2.Application("example", {
///     name: "example-sql-application",
///     runtimeEnvironment: "SQL-1_0",
///     serviceExecutionRole: exampleAwsIamRole.arn,
///     applicationConfiguration: {
///         applicationCodeConfiguration: {
///             codeContent: {
///                 textContent: "SELECT 1;\n",
///             },
///             codeContentType: "PLAINTEXT",
///         },
///         sqlApplicationConfiguration: {
///             input: {
///                 namePrefix: "PREFIX_1",
///                 inputParallelism: {
///                     count: 3,
///                 },
///                 inputSchema: {
///                     recordColumns: [
///                         {
///                             name: "COLUMN_1",
///                             sqlType: "VARCHAR(8)",
///                             mapping: "MAPPING-1",
///                         },
///                         {
///                             name: "COLUMN_2",
///                             sqlType: "DOUBLE",
///                         },
///                     ],
///                     recordEncoding: "UTF-8",
///                     recordFormat: {
///                         recordFormatType: "CSV",
///                         mappingParameters: {
///                             csvMappingParameters: {
///                                 recordColumnDelimiter: ",",
///                                 recordRowDelimiter: "\n",
///                             },
///                         },
///                     },
///                 },
///                 kinesisStreamsInput: {
///                     resourceArn: exampleAwsKinesisStream.arn,
///                 },
///             },
///             outputs: [
///                 {
///                     name: "OUTPUT_1",
///                     destinationSchema: {
///                         recordFormatType: "JSON",
///                     },
///                     lambdaOutput: {
///                         resourceArn: exampleAwsLambdaFunction.arn,
///                     },
///                 },
///                 {
///                     name: "OUTPUT_2",
///                     destinationSchema: {
///                         recordFormatType: "CSV",
///                     },
///                     kinesisFirehoseOutput: {
///                         resourceArn: exampleAwsKinesisFirehoseDeliveryStream.arn,
///                     },
///                 },
///             ],
///             referenceDataSource: {
///                 tableName: "TABLE-1",
///                 referenceSchema: {
///                     recordColumns: [{
///                         name: "COLUMN_1",
///                         sqlType: "INTEGER",
///                     }],
///                     recordFormat: {
///                         recordFormatType: "JSON",
///                         mappingParameters: {
///                             jsonMappingParameters: {
///                                 recordRowPath: "$",
///                             },
///                         },
///                     },
///                 },
///                 s3ReferenceDataSource: {
///                     bucketArn: exampleAwsS3Bucket.arn,
///                     fileKey: "KEY-1",
///                 },
///             },
///         },
///     },
///     cloudwatchLoggingOptions: {
///         logStreamArn: exampleLogStream.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example", name="example-sql-application")
/// example_log_stream = aws.cloudwatch.LogStream("example",
///     name="example-sql-application",
///     log_group_name=example.name)
/// example_application = aws.kinesisanalyticsv2.Application("example",
///     name="example-sql-application",
///     runtime_environment="SQL-1_0",
///     service_execution_role=example_aws_iam_role["arn"],
///     application_configuration={
///         "application_code_configuration": {
///             "code_content": {
///                 "text_content": "SELECT 1;\n",
///             },
///             "code_content_type": "PLAINTEXT",
///         },
///         "sql_application_configuration": {
///             "input": {
///                 "name_prefix": "PREFIX_1",
///                 "input_parallelism": {
///                     "count": 3,
///                 },
///                 "input_schema": {
///                     "record_columns": [
///                         {
///                             "name": "COLUMN_1",
///                             "sql_type": "VARCHAR(8)",
///                             "mapping": "MAPPING-1",
///                         },
///                         {
///                             "name": "COLUMN_2",
///                             "sql_type": "DOUBLE",
///                         },
///                     ],
///                     "record_encoding": "UTF-8",
///                     "record_format": {
///                         "record_format_type": "CSV",
///                         "mapping_parameters": {
///                             "csv_mapping_parameters": {
///                                 "record_column_delimiter": ",",
///                                 "record_row_delimiter": "\n",
///                             },
///                         },
///                     },
///                 },
///                 "kinesis_streams_input": {
///                     "resource_arn": example_aws_kinesis_stream["arn"],
///                 },
///             },
///             "outputs": [
///                 {
///                     "name": "OUTPUT_1",
///                     "destination_schema": {
///                         "record_format_type": "JSON",
///                     },
///                     "lambda_output": {
///                         "resource_arn": example_aws_lambda_function["arn"],
///                     },
///                 },
///                 {
///                     "name": "OUTPUT_2",
///                     "destination_schema": {
///                         "record_format_type": "CSV",
///                     },
///                     "kinesis_firehose_output": {
///                         "resource_arn": example_aws_kinesis_firehose_delivery_stream["arn"],
///                     },
///                 },
///             ],
///             "reference_data_source": {
///                 "table_name": "TABLE-1",
///                 "reference_schema": {
///                     "record_columns": [{
///                         "name": "COLUMN_1",
///                         "sql_type": "INTEGER",
///                     }],
///                     "record_format": {
///                         "record_format_type": "JSON",
///                         "mapping_parameters": {
///                             "json_mapping_parameters": {
///                                 "record_row_path": "$",
///                             },
///                         },
///                     },
///                 },
///                 "s3_reference_data_source": {
///                     "bucket_arn": example_aws_s3_bucket["arn"],
///                     "file_key": "KEY-1",
///                 },
///             },
///         },
///     },
///     cloudwatch_logging_options={
///         "log_stream_arn": example_log_stream.arn,
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
///     var example = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "example-sql-application",
///     });
///
///     var exampleLogStream = new Aws.CloudWatch.LogStream("example", new()
///     {
///         Name = "example-sql-application",
///         LogGroupName = example.Name,
///     });
///
///     var exampleApplication = new Aws.KinesisAnalyticsV2.Application("example", new()
///     {
///         Name = "example-sql-application",
///         RuntimeEnvironment = "SQL-1_0",
///         ServiceExecutionRole = exampleAwsIamRole.Arn,
///         ApplicationConfiguration = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationArgs
///         {
///             ApplicationCodeConfiguration = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationArgs
///             {
///                 CodeContent = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentArgs
///                 {
///                     TextContent = @"SELECT 1;
/// ",
///                 },
///                 CodeContentType = "PLAINTEXT",
///             },
///             SqlApplicationConfiguration = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationArgs
///             {
///                 Input = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputArgs
///                 {
///                     NamePrefix = "PREFIX_1",
///                     InputParallelism = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelismArgs
///                     {
///                         Count = 3,
///                     },
///                     InputSchema = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaArgs
///                     {
///                         RecordColumns = new[]
///                         {
///                             new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumnArgs
///                             {
///                                 Name = "COLUMN_1",
///                                 SqlType = "VARCHAR(8)",
///                                 Mapping = "MAPPING-1",
///                             },
///                             new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumnArgs
///                             {
///                                 Name = "COLUMN_2",
///                                 SqlType = "DOUBLE",
///                             },
///                         },
///                         RecordEncoding = "UTF-8",
///                         RecordFormat = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatArgs
///                         {
///                             RecordFormatType = "CSV",
///                             MappingParameters = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersArgs
///                             {
///                                 CsvMappingParameters = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParametersArgs
///                                 {
///                                     RecordColumnDelimiter = ",",
///                                     RecordRowDelimiter = @"
/// ",
///                                 },
///                             },
///                         },
///                     },
///                     KinesisStreamsInput = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInputArgs
///                     {
///                         ResourceArn = exampleAwsKinesisStream.Arn,
///                     },
///                 },
///                 Outputs = new[]
///                 {
///                     new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputArgs
///                     {
///                         Name = "OUTPUT_1",
///                         DestinationSchema = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchemaArgs
///                         {
///                             RecordFormatType = "JSON",
///                         },
///                         LambdaOutput = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutputArgs
///                         {
///                             ResourceArn = exampleAwsLambdaFunction.Arn,
///                         },
///                     },
///                     new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputArgs
///                     {
///                         Name = "OUTPUT_2",
///                         DestinationSchema = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchemaArgs
///                         {
///                             RecordFormatType = "CSV",
///                         },
///                         KinesisFirehoseOutput = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutputArgs
///                         {
///                             ResourceArn = exampleAwsKinesisFirehoseDeliveryStream.Arn,
///                         },
///                     },
///                 },
///                 ReferenceDataSource = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceArgs
///                 {
///                     TableName = "TABLE-1",
///                     ReferenceSchema = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaArgs
///                     {
///                         RecordColumns = new[]
///                         {
///                             new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumnArgs
///                             {
///                                 Name = "COLUMN_1",
///                                 SqlType = "INTEGER",
///                             },
///                         },
///                         RecordFormat = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatArgs
///                         {
///                             RecordFormatType = "JSON",
///                             MappingParameters = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersArgs
///                             {
///                                 JsonMappingParameters = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParametersArgs
///                                 {
///                                     RecordRowPath = "$",
///                                 },
///                             },
///                         },
///                     },
///                     S3ReferenceDataSource = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSourceArgs
///                     {
///                         BucketArn = exampleAwsS3Bucket.Arn,
///                         FileKey = "KEY-1",
///                     },
///                 },
///             },
///         },
///         CloudwatchLoggingOptions = new Aws.KinesisAnalyticsV2.Inputs.ApplicationCloudwatchLoggingOptionsArgs
///         {
///             LogStreamArn = exampleLogStream.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesisanalyticsv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("example-sql-application"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogStream, err := cloudwatch.NewLogStream(ctx, "example", &cloudwatch.LogStreamArgs{
/// 			Name:         pulumi.String("example-sql-application"),
/// 			LogGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesisanalyticsv2.NewApplication(ctx, "example", &kinesisanalyticsv2.ApplicationArgs{
/// 			Name:                 pulumi.String("example-sql-application"),
/// 			RuntimeEnvironment:   pulumi.String("SQL-1_0"),
/// 			ServiceExecutionRole: pulumi.Any(exampleAwsIamRole.Arn),
/// 			ApplicationConfiguration: &kinesisanalyticsv2.ApplicationApplicationConfigurationArgs{
/// 				ApplicationCodeConfiguration: &kinesisanalyticsv2.ApplicationApplicationConfigurationApplicationCodeConfigurationArgs{
/// 					CodeContent: &kinesisanalyticsv2.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentArgs{
/// 						TextContent: pulumi.String("SELECT 1;\n"),
/// 					},
/// 					CodeContentType: pulumi.String("PLAINTEXT"),
/// 				},
/// 				SqlApplicationConfiguration: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationArgs{
/// 					Input: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationInputTypeArgs{
/// 						NamePrefix: pulumi.String("PREFIX_1"),
/// 						InputParallelism: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelismArgs{
/// 							Count: pulumi.Int(3),
/// 						},
/// 						InputSchema: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaArgs{
/// 							RecordColumns: kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumnArray{
/// 								&kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumnArgs{
/// 									Name:    pulumi.String("COLUMN_1"),
/// 									SqlType: pulumi.String("VARCHAR(8)"),
/// 									Mapping: pulumi.String("MAPPING-1"),
/// 								},
/// 								&kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumnArgs{
/// 									Name:    pulumi.String("COLUMN_2"),
/// 									SqlType: pulumi.String("DOUBLE"),
/// 								},
/// 							},
/// 							RecordEncoding: pulumi.String("UTF-8"),
/// 							RecordFormat: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatArgs{
/// 								RecordFormatType: pulumi.String("CSV"),
/// 								MappingParameters: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersArgs{
/// 									CsvMappingParameters: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParametersArgs{
/// 										RecordColumnDelimiter: pulumi.String(","),
/// 										RecordRowDelimiter:    pulumi.String("\n"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						KinesisStreamsInput: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInputArgs{
/// 							ResourceArn: pulumi.Any(exampleAwsKinesisStream.Arn),
/// 						},
/// 					},
/// 					Outputs: kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputTypeArray{
/// 						&kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputTypeArgs{
/// 							Name: pulumi.String("OUTPUT_1"),
/// 							DestinationSchema: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchemaArgs{
/// 								RecordFormatType: pulumi.String("JSON"),
/// 							},
/// 							LambdaOutput: kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutputArgs{
/// 								ResourceArn: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 							},
/// 						},
/// 						&kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputTypeArgs{
/// 							Name: pulumi.String("OUTPUT_2"),
/// 							DestinationSchema: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchemaArgs{
/// 								RecordFormatType: pulumi.String("CSV"),
/// 							},
/// 							KinesisFirehoseOutput: kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutputArgs{
/// 								ResourceArn: pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Arn),
/// 							},
/// 						},
/// 					},
/// 					ReferenceDataSource: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceArgs{
/// 						TableName: pulumi.String("TABLE-1"),
/// 						ReferenceSchema: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaArgs{
/// 							RecordColumns: kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumnArray{
/// 								&kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumnArgs{
/// 									Name:    pulumi.String("COLUMN_1"),
/// 									SqlType: pulumi.String("INTEGER"),
/// 								},
/// 							},
/// 							RecordFormat: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatArgs{
/// 								RecordFormatType: pulumi.String("JSON"),
/// 								MappingParameters: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersArgs{
/// 									JsonMappingParameters: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParametersArgs{
/// 										RecordRowPath: pulumi.String("$"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						S3ReferenceDataSource: &kinesisanalyticsv2.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSourceArgs{
/// 							BucketArn: pulumi.Any(exampleAwsS3Bucket.Arn),
/// 							FileKey:   pulumi.String("KEY-1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			CloudwatchLoggingOptions: &kinesisanalyticsv2.ApplicationCloudwatchLoggingOptionsArgs{
/// 				LogStreamArn: exampleLogStream.Arn,
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudwatch.LogStream;
/// import com.pulumi.aws.cloudwatch.LogStreamArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.Application;
/// import com.pulumi.aws.kinesisanalyticsv2.ApplicationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelismArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParametersArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInputArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParametersArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSourceArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationCloudwatchLoggingOptionsArgs;
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
///             .name("example-sql-application")
///             .build());
///
///         var exampleLogStream = new LogStream("exampleLogStream", LogStreamArgs.builder()
///             .name("example-sql-application")
///             .logGroupName(example.name())
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("example-sql-application")
///             .runtimeEnvironment("SQL-1_0")
///             .serviceExecutionRole(exampleAwsIamRole.arn())
///             .applicationConfiguration(ApplicationApplicationConfigurationArgs.builder()
///                 .applicationCodeConfiguration(ApplicationApplicationConfigurationApplicationCodeConfigurationArgs.builder()
///                     .codeContent(ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentArgs.builder()
///                         .textContent("""
/// SELECT 1;
///                         """)
///                         .build())
///                     .codeContentType("PLAINTEXT")
///                     .build())
///                 .sqlApplicationConfiguration(ApplicationApplicationConfigurationSqlApplicationConfigurationArgs.builder()
///                     .input(ApplicationApplicationConfigurationSqlApplicationConfigurationInputArgs.builder()
///                         .namePrefix("PREFIX_1")
///                         .inputParallelism(ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelismArgs.builder()
///                             .count(3)
///                             .build())
///                         .inputSchema(ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaArgs.builder()
///                             .recordColumns(
///                                 ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumnArgs.builder()
///                                     .name("COLUMN_1")
///                                     .sqlType("VARCHAR(8)")
///                                     .mapping("MAPPING-1")
///                                     .build(),
///                                 ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordColumnArgs.builder()
///                                     .name("COLUMN_2")
///                                     .sqlType("DOUBLE")
///                                     .build())
///                             .recordEncoding("UTF-8")
///                             .recordFormat(ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatArgs.builder()
///                                 .recordFormatType("CSV")
///                                 .mappingParameters(ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersArgs.builder()
///                                     .csvMappingParameters(ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputSchemaRecordFormatMappingParametersCsvMappingParametersArgs.builder()
///                                         .recordColumnDelimiter(",")
///                                         .recordRowDelimiter("""
///
///                                         """)
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .kinesisStreamsInput(ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInputArgs.builder()
///                             .resourceArn(exampleAwsKinesisStream.arn())
///                             .build())
///                         .build())
///                     .outputs(
///                         ApplicationApplicationConfigurationSqlApplicationConfigurationOutputArgs.builder()
///                             .name("OUTPUT_1")
///                             .destinationSchema(ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchemaArgs.builder()
///                                 .recordFormatType("JSON")
///                                 .build())
///                             .lambdaOutput(ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutputArgs.builder()
///                                 .resourceArn(exampleAwsLambdaFunction.arn())
///                                 .build())
///                             .build(),
///                         ApplicationApplicationConfigurationSqlApplicationConfigurationOutputArgs.builder()
///                             .name("OUTPUT_2")
///                             .destinationSchema(ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchemaArgs.builder()
///                                 .recordFormatType("CSV")
///                                 .build())
///                             .kinesisFirehoseOutput(ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutputArgs.builder()
///                                 .resourceArn(exampleAwsKinesisFirehoseDeliveryStream.arn())
///                                 .build())
///                             .build())
///                     .referenceDataSource(ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceArgs.builder()
///                         .tableName("TABLE-1")
///                         .referenceSchema(ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaArgs.builder()
///                             .recordColumns(ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordColumnArgs.builder()
///                                 .name("COLUMN_1")
///                                 .sqlType("INTEGER")
///                                 .build())
///                             .recordFormat(ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatArgs.builder()
///                                 .recordFormatType("JSON")
///                                 .mappingParameters(ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersArgs.builder()
///                                     .jsonMappingParameters(ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceReferenceSchemaRecordFormatMappingParametersJsonMappingParametersArgs.builder()
///                                         .recordRowPath("$")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .s3ReferenceDataSource(ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSourceS3ReferenceDataSourceArgs.builder()
///                             .bucketArn(exampleAwsS3Bucket.arn())
///                             .fileKey("KEY-1")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .cloudwatchLoggingOptions(ApplicationCloudwatchLoggingOptionsArgs.builder()
///                 .logStreamArn(exampleLogStream.arn())
///                 .build())
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
///       name: example-sql-application
///   exampleLogStream:
///     type: aws:cloudwatch:LogStream
///     name: example
///     properties:
///       name: example-sql-application
///       logGroupName: ${example.name}
///   exampleApplication:
///     type: aws:kinesisanalyticsv2:Application
///     name: example
///     properties:
///       name: example-sql-application
///       runtimeEnvironment: SQL-1_0
///       serviceExecutionRole: ${exampleAwsIamRole.arn}
///       applicationConfiguration:
///         applicationCodeConfiguration:
///           codeContent:
///             textContent: |
///               SELECT 1;
///           codeContentType: PLAINTEXT
///         sqlApplicationConfiguration:
///           input:
///             namePrefix: PREFIX_1
///             inputParallelism:
///               count: 3
///             inputSchema:
///               recordColumns:
///                 - name: COLUMN_1
///                   sqlType: VARCHAR(8)
///                   mapping: MAPPING-1
///                 - name: COLUMN_2
///                   sqlType: DOUBLE
///               recordEncoding: UTF-8
///               recordFormat:
///                 recordFormatType: CSV
///                 mappingParameters:
///                   csvMappingParameters:
///                     recordColumnDelimiter: ','
///                     recordRowDelimiter: |2+
///             kinesisStreamsInput:
///               resourceArn: ${exampleAwsKinesisStream.arn}
///           outputs:
///             - name: OUTPUT_1
///               destinationSchema:
///                 recordFormatType: JSON
///               lambdaOutput:
///                 resourceArn: ${exampleAwsLambdaFunction.arn}
///             - name: OUTPUT_2
///               destinationSchema:
///                 recordFormatType: CSV
///               kinesisFirehoseOutput:
///                 resourceArn: ${exampleAwsKinesisFirehoseDeliveryStream.arn}
///           referenceDataSource:
///             tableName: TABLE-1
///             referenceSchema:
///               recordColumns:
///                 - name: COLUMN_1
///                   sqlType: INTEGER
///               recordFormat:
///                 recordFormatType: JSON
///                 mappingParameters:
///                   jsonMappingParameters:
///                     recordRowPath: $
///             s3ReferenceDataSource:
///               bucketArn: ${exampleAwsS3Bucket.arn}
///               fileKey: KEY-1
///       cloudwatchLoggingOptions:
///         logStreamArn: ${exampleLogStream.arn}
/// ```
///
///
/// ### VPC Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example-flink-application"});
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
///     bucket: example.id,
///     key: "example-flink-application",
///     source: new pulumi.asset.FileAsset("flink-app.jar"),
/// });
/// const exampleApplication = new aws.kinesisanalyticsv2.Application("example", {
///     name: "example-flink-application",
///     runtimeEnvironment: "FLINK-1_8",
///     serviceExecutionRole: exampleAwsIamRole.arn,
///     applicationConfiguration: {
///         applicationCodeConfiguration: {
///             codeContent: {
///                 s3ContentLocation: {
///                     bucketArn: example.arn,
///                     fileKey: exampleBucketObjectv2.key,
///                 },
///             },
///             codeContentType: "ZIPFILE",
///         },
///         vpcConfiguration: {
///             securityGroupIds: [
///                 exampleAwsSecurityGroup[0].id,
///                 exampleAwsSecurityGroup[1].id,
///             ],
///             subnetIds: [exampleAwsSubnet.id],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example-flink-application")
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
///     bucket=example.id,
///     key="example-flink-application",
///     source=pulumi.FileAsset("flink-app.jar"))
/// example_application = aws.kinesisanalyticsv2.Application("example",
///     name="example-flink-application",
///     runtime_environment="FLINK-1_8",
///     service_execution_role=example_aws_iam_role["arn"],
///     application_configuration={
///         "application_code_configuration": {
///             "code_content": {
///                 "s3_content_location": {
///                     "bucket_arn": example.arn,
///                     "file_key": example_bucket_objectv2.key,
///                 },
///             },
///             "code_content_type": "ZIPFILE",
///         },
///         "vpc_configuration": {
///             "security_group_ids": [
///                 example_aws_security_group[0]["id"],
///                 example_aws_security_group[1]["id"],
///             ],
///             "subnet_ids": [example_aws_subnet["id"]],
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
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-flink-application",
///     });
///
///     var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
///     {
///         Bucket = example.Id,
///         Key = "example-flink-application",
///         Source = new FileAsset("flink-app.jar"),
///     });
///
///     var exampleApplication = new Aws.KinesisAnalyticsV2.Application("example", new()
///     {
///         Name = "example-flink-application",
///         RuntimeEnvironment = "FLINK-1_8",
///         ServiceExecutionRole = exampleAwsIamRole.Arn,
///         ApplicationConfiguration = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationArgs
///         {
///             ApplicationCodeConfiguration = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationArgs
///             {
///                 CodeContent = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentArgs
///                 {
///                     S3ContentLocation = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocationArgs
///                     {
///                         BucketArn = example.Arn,
///                         FileKey = exampleBucketObjectv2.Key,
///                     },
///                 },
///                 CodeContentType = "ZIPFILE",
///             },
///             VpcConfiguration = new Aws.KinesisAnalyticsV2.Inputs.ApplicationApplicationConfigurationVpcConfigurationArgs
///             {
///                 SecurityGroupIds = new[]
///                 {
///                     exampleAwsSecurityGroup[0].Id,
///                     exampleAwsSecurityGroup[1].Id,
///                 },
///                 SubnetIds = new[]
///                 {
///                     exampleAwsSubnet.Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesisanalyticsv2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example-flink-application"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketObjectv2, err := s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// 			Bucket: example.ID(),
/// 			Key:    pulumi.String("example-flink-application"),
/// 			Source: pulumi.NewFileAsset("flink-app.jar"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesisanalyticsv2.NewApplication(ctx, "example", &kinesisanalyticsv2.ApplicationArgs{
/// 			Name:                 pulumi.String("example-flink-application"),
/// 			RuntimeEnvironment:   pulumi.String("FLINK-1_8"),
/// 			ServiceExecutionRole: pulumi.Any(exampleAwsIamRole.Arn),
/// 			ApplicationConfiguration: &kinesisanalyticsv2.ApplicationApplicationConfigurationArgs{
/// 				ApplicationCodeConfiguration: &kinesisanalyticsv2.ApplicationApplicationConfigurationApplicationCodeConfigurationArgs{
/// 					CodeContent: &kinesisanalyticsv2.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentArgs{
/// 						S3ContentLocation: &kinesisanalyticsv2.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocationArgs{
/// 							BucketArn: example.Arn,
/// 							FileKey:   exampleBucketObjectv2.Key,
/// 						},
/// 					},
/// 					CodeContentType: pulumi.String("ZIPFILE"),
/// 				},
/// 				VpcConfiguration: &kinesisanalyticsv2.ApplicationApplicationConfigurationVpcConfigurationArgs{
/// 					SecurityGroupIds: pulumi.StringArray{
/// 						exampleAwsSecurityGroup[0].Id,
/// 						exampleAwsSecurityGroup[1].Id,
/// 					},
/// 					SubnetIds: pulumi.StringArray{
/// 						exampleAwsSubnet.Id,
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.kinesisanalyticsv2.Application;
/// import com.pulumi.aws.kinesisanalyticsv2.ApplicationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocationArgs;
/// import com.pulumi.aws.kinesisanalyticsv2.inputs.ApplicationApplicationConfigurationVpcConfigurationArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example-flink-application")
///             .build());
///
///         var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
///             .bucket(example.id())
///             .key("example-flink-application")
///             .source(new FileAsset("flink-app.jar"))
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("example-flink-application")
///             .runtimeEnvironment("FLINK-1_8")
///             .serviceExecutionRole(exampleAwsIamRole.arn())
///             .applicationConfiguration(ApplicationApplicationConfigurationArgs.builder()
///                 .applicationCodeConfiguration(ApplicationApplicationConfigurationApplicationCodeConfigurationArgs.builder()
///                     .codeContent(ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentArgs.builder()
///                         .s3ContentLocation(ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocationArgs.builder()
///                             .bucketArn(example.arn())
///                             .fileKey(exampleBucketObjectv2.key())
///                             .build())
///                         .build())
///                     .codeContentType("ZIPFILE")
///                     .build())
///                 .vpcConfiguration(ApplicationApplicationConfigurationVpcConfigurationArgs.builder()
///                     .securityGroupIds(
///                         exampleAwsSecurityGroup[0].id(),
///                         exampleAwsSecurityGroup[1].id())
///                     .subnetIds(exampleAwsSubnet.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example-flink-application
///   exampleBucketObjectv2:
///     type: aws:s3:BucketObjectv2
///     name: example
///     properties:
///       bucket: ${example.id}
///       key: example-flink-application
///       source:
///         fn::FileAsset: flink-app.jar
///   exampleApplication:
///     type: aws:kinesisanalyticsv2:Application
///     name: example
///     properties:
///       name: example-flink-application
///       runtimeEnvironment: FLINK-1_8
///       serviceExecutionRole: ${exampleAwsIamRole.arn}
///       applicationConfiguration:
///         applicationCodeConfiguration:
///           codeContent:
///             s3ContentLocation:
///               bucketArn: ${example.arn}
///               fileKey: ${exampleBucketObjectv2.key}
///           codeContentType: ZIPFILE
///         vpcConfiguration:
///           securityGroupIds:
///             - ${exampleAwsSecurityGroup[0].id}
///             - ${exampleAwsSecurityGroup[1].id}
///           subnetIds:
///             - ${exampleAwsSubnet.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.kinesisanalyticsv2.Application` using the application ARN. For example:
///
/// ```sh
/// $ pulumi import aws:kinesisanalyticsv2/application:Application example arn:aws:kinesisanalytics:us-west-2:123456789012:application/example-sql-application
/// ```
class Application extends pulumi.CustomResource {
  /// The application's configuration
  late final pulumi.Output<ApplicationApplicationConfiguration>
  applicationConfiguration;

  /// The application's mode. Valid values are `STREAMING`, `INTERACTIVE`.
  late final pulumi.Output<String> applicationMode;

  /// The ARN of the application.
  late final pulumi.Output<String> arn;

  /// A CloudWatch log stream to monitor application configuration errors.
  late final pulumi.Output<ApplicationCloudwatchLoggingOptions?>
  cloudwatchLoggingOptions;

  /// The current timestamp when the application was created.
  late final pulumi.Output<String> createTimestamp;

  /// A summary description of the application.
  late final pulumi.Output<String?> description;

  /// Whether to force stop an unresponsive Flink-based application.
  late final pulumi.Output<bool?> forceStop;

  /// The current timestamp when the application was last updated.
  late final pulumi.Output<String> lastUpdateTimestamp;

  /// The name of the application.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The runtime environment for the application. Valid values: `SQL-1_0`, `FLINK-1_6`, `FLINK-1_8`, `FLINK-1_11`, `FLINK-1_13`, `FLINK-1_15`, `FLINK-1_18`, `FLINK-1_19`, `FLINK-1_20`.
  late final pulumi.Output<String> runtimeEnvironment;

  /// The ARN of the IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources.
  late final pulumi.Output<String> serviceExecutionRole;

  /// Whether to start or stop the application.
  late final pulumi.Output<bool?> startApplication;

  /// The status of the application.
  late final pulumi.Output<String> status;

  /// A map of tags to assign to the application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The current application version. Kinesis Data Analytics updates the `version_id` each time the application is updated.
  late final pulumi.Output<int> versionId;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_kinesisanalyticsv2_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:kinesisanalyticsv2/application:Application',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.applicationConfiguration =
        registerOutput<ApplicationApplicationConfiguration>(
          'applicationConfiguration',
        );
    this.applicationMode = registerOutput<String>('applicationMode');
    this.arn = registerOutput<String>('arn');
    this.cloudwatchLoggingOptions =
        registerOutput<ApplicationCloudwatchLoggingOptions?>(
          'cloudwatchLoggingOptions',
        );
    this.createTimestamp = registerOutput<String>('createTimestamp');
    this.description = registerOutput<String?>('description');
    this.forceStop = registerOutput<bool?>('forceStop');
    this.lastUpdateTimestamp = registerOutput<String>('lastUpdateTimestamp');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.runtimeEnvironment = registerOutput<String>('runtimeEnvironment');
    this.serviceExecutionRole = registerOutput<String>('serviceExecutionRole');
    this.startApplication = registerOutput<bool?>('startApplication');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.versionId = registerOutput<int>('versionId');
  }
}
