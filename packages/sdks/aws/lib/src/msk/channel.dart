import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_args.dart';
import 'channel_encryption_configuration.dart';
import 'channel_iceberg_destination.dart';
import 'channel_logging_info.dart';
import 'channel_s3_destination.dart';
import 'channel_state.dart';
import 'channel_timeouts.dart';
import 'channel_topic_configuration.dart';

/// Manages an Amazon Managed Streaming for Apache Kafka (MSK) Channel.
///
/// With [Amazon MSK Data Delivery](https://docs.aws.amazon.com/msk/latest/developerguide/msk-data-delivery.html), a channel delivers Apache Kafka data from an Amazon MSK Provisioned cluster that uses Express brokers directly to Amazon S3, without connectors or additional infrastructure to manage. A channel reads records from a Kafka topic and delivers them to one of two destinations:
///
/// * **Amazon S3 general purpose buckets** — records are written in their source format (`JSON`, `ByteArray`, or `String`) as objects, for use cases such as log archival, compliance retention, and Kafka replay.
/// * **Apache Iceberg tables on Amazon S3 Tables** — `JSON` records, validated against an AWS Glue Schema Registry schema, are materialized as Apache Iceberg tables.
///
/// Records that cannot be processed are routed to a required dead-letter queue (DLQ) Amazon S3 bucket. Channels are supported only on Amazon MSK Provisioned clusters that use Express brokers; Standard brokers and Amazon MSK Serverless are not supported.
///
/// &gt; **Note:** A channel does not backfill previously produced data; only data produced after creation is delivered. For the Iceberg destination, a channel creates a new Iceberg table for each configuration.
///
/// ## Example Usage
///
/// ### Amazon S3 Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.msk.Channel("example", {
///     topicConfiguration: {
///         recordConverter: {
///             valueConverter: "BYTE_ARRAY",
///         },
///         topicArn: exampleAwsMskTopic.arn,
///     },
///     s3Destination: {
///         deadLetterQueueS3: {
///             bucketArn: dlq.arn,
///         },
///         storage: {
///             bucketArn: exampleAwsS3Bucket.arn,
///             compressionType: "NONE",
///             storageClass: "STANDARD",
///         },
///         serviceExecutionRoleArn: exampleAwsIamRole.arn,
///     },
///     channelName: "example",
///     clusterArn: exampleAwsMskCluster.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.Channel("example",
///     topic_configuration={
///         "record_converter": {
///             "value_converter": "BYTE_ARRAY",
///         },
///         "topic_arn": example_aws_msk_topic["arn"],
///     },
///     s3_destination={
///         "dead_letter_queue_s3": {
///             "bucket_arn": dlq["arn"],
///         },
///         "storage": {
///             "bucket_arn": example_aws_s3_bucket["arn"],
///             "compression_type": "NONE",
///             "storage_class": "STANDARD",
///         },
///         "service_execution_role_arn": example_aws_iam_role["arn"],
///     },
///     channel_name="example",
///     cluster_arn=example_aws_msk_cluster["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Msk.Channel("example", new()
///     {
///         TopicConfiguration = new Aws.Msk.Inputs.ChannelTopicConfigurationArgs
///         {
///             RecordConverter = new Aws.Msk.Inputs.ChannelTopicConfigurationRecordConverterArgs
///             {
///                 ValueConverter = "BYTE_ARRAY",
///             },
///             TopicArn = exampleAwsMskTopic.Arn,
///         },
///         S3Destination = new Aws.Msk.Inputs.ChannelS3DestinationArgs
///         {
///             DeadLetterQueueS3 = new Aws.Msk.Inputs.ChannelS3DestinationDeadLetterQueueS3Args
///             {
///                 BucketArn = dlq.Arn,
///             },
///             Storage = new Aws.Msk.Inputs.ChannelS3DestinationStorageArgs
///             {
///                 BucketArn = exampleAwsS3Bucket.Arn,
///                 CompressionType = "NONE",
///                 StorageClass = "STANDARD",
///             },
///             ServiceExecutionRoleArn = exampleAwsIamRole.Arn,
///         },
///         ChannelName = "example",
///         ClusterArn = exampleAwsMskCluster.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := msk.NewChannel(ctx, "example", &msk.ChannelArgs{
/// 			TopicConfiguration: &msk.ChannelTopicConfigurationArgs{
/// 				RecordConverter: &msk.ChannelTopicConfigurationRecordConverterArgs{
/// 					ValueConverter: pulumi.String("BYTE_ARRAY"),
/// 				},
/// 				TopicArn: pulumi.Any(exampleAwsMskTopic.Arn),
/// 			},
/// 			S3Destination: &msk.ChannelS3DestinationArgs{
/// 				DeadLetterQueueS3: &msk.ChannelS3DestinationDeadLetterQueueS3Args{
/// 					BucketArn: pulumi.Any(dlq.Arn),
/// 				},
/// 				Storage: &msk.ChannelS3DestinationStorageArgs{
/// 					BucketArn:       pulumi.Any(exampleAwsS3Bucket.Arn),
/// 					CompressionType: pulumi.String("NONE"),
/// 					StorageClass:    pulumi.String("STANDARD"),
/// 				},
/// 				ServiceExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			},
/// 			ChannelName: pulumi.String("example"),
/// 			ClusterArn:  pulumi.Any(exampleAwsMskCluster.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_msk_channel" "example" {
///   topic_configuration = {
///     record_converter = {
///       value_converter = "BYTE_ARRAY"
///     }
///     topic_arn = exampleAwsMskTopic.arn
///   }
///   s3_destination = {
///     dead_letter_queue_s3 = {
///       bucket_arn = dlq.arn
///     }
///     storage = {
///       bucket_arn       = exampleAwsS3Bucket.arn
///       compression_type = "NONE"
///       storage_class    = "STANDARD"
///     }
///     service_execution_role_arn = exampleAwsIamRole.arn
///   }
///   channel_name = "example"
///   cluster_arn  = exampleAwsMskCluster.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.Channel;
/// import com.pulumi.aws.msk.ChannelArgs;
/// import com.pulumi.aws.msk.inputs.ChannelTopicConfigurationArgs;
/// import com.pulumi.aws.msk.inputs.ChannelTopicConfigurationRecordConverterArgs;
/// import com.pulumi.aws.msk.inputs.ChannelS3DestinationArgs;
/// import com.pulumi.aws.msk.inputs.ChannelS3DestinationDeadLetterQueueS3Args;
/// import com.pulumi.aws.msk.inputs.ChannelS3DestinationStorageArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Channel("example", ChannelArgs.builder()
///             .topicConfiguration(ChannelTopicConfigurationArgs.builder()
///                 .recordConverter(ChannelTopicConfigurationRecordConverterArgs.builder()
///                     .valueConverter("BYTE_ARRAY")
///                     .build())
///                 .topicArn(exampleAwsMskTopic.arn())
///                 .build())
///             .s3Destination(ChannelS3DestinationArgs.builder()
///                 .deadLetterQueueS3(ChannelS3DestinationDeadLetterQueueS3Args.builder()
///                     .bucketArn(dlq.arn())
///                     .build())
///                 .storage(ChannelS3DestinationStorageArgs.builder()
///                     .bucketArn(exampleAwsS3Bucket.arn())
///                     .compressionType("NONE")
///                     .storageClass("STANDARD")
///                     .build())
///                 .serviceExecutionRoleArn(exampleAwsIamRole.arn())
///                 .build())
///             .channelName("example")
///             .clusterArn(exampleAwsMskCluster.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:msk:Channel
///     properties:
///       topicConfiguration:
///         recordConverter:
///           valueConverter: BYTE_ARRAY
///         topicArn: ${exampleAwsMskTopic.arn}
///       s3Destination:
///         deadLetterQueueS3:
///           bucketArn: ${dlq.arn}
///         storage:
///           bucketArn: ${exampleAwsS3Bucket.arn}
///           compressionType: NONE
///           storageClass: STANDARD
///         serviceExecutionRoleArn: ${exampleAwsIamRole.arn}
///       channelName: example
///       clusterArn: ${exampleAwsMskCluster.arn}
/// ```
///
///
/// ### Apache Iceberg Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.msk.Channel("example", {
///     topicConfiguration: {
///         recordConverter: {
///             valueConverter: "JSON",
///         },
///         recordSchema: {
///             gsrArn: exampleAwsGlueSchema.arn,
///         },
///         topicArn: exampleAwsMskTopic.arn,
///     },
///     icebergDestination: {
///         catalog: {
///             warehouseLocation: exampleAwsS3tablesTableBucket.arn,
///         },
///         deadLetterQueueS3: {
///             bucketArn: dlq.arn,
///         },
///         destinationTable: {
///             partitionSpec: {
///                 sources: [{
///                     sourceName: "event_time",
///                 }],
///                 partitionStrategy: "TIME_HOUR",
///             },
///             destinationDatabaseName: "example_namespace",
///             destinationTableName: "example_table",
///         },
///         schemaEvolution: {
///             enableSchemaEvolution: false,
///         },
///         tableCreation: {
///             enableTableCreation: true,
///         },
///         appendOnly: true,
///         serviceExecutionRoleArn: exampleAwsIamRole.arn,
///     },
///     channelName: "example",
///     clusterArn: exampleAwsMskCluster.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.Channel("example",
///     topic_configuration={
///         "record_converter": {
///             "value_converter": "JSON",
///         },
///         "record_schema": {
///             "gsr_arn": example_aws_glue_schema["arn"],
///         },
///         "topic_arn": example_aws_msk_topic["arn"],
///     },
///     iceberg_destination={
///         "catalog": {
///             "warehouse_location": example_aws_s3tables_table_bucket["arn"],
///         },
///         "dead_letter_queue_s3": {
///             "bucket_arn": dlq["arn"],
///         },
///         "destination_table": {
///             "partition_spec": {
///                 "sources": [{
///                     "source_name": "event_time",
///                 }],
///                 "partition_strategy": "TIME_HOUR",
///             },
///             "destination_database_name": "example_namespace",
///             "destination_table_name": "example_table",
///         },
///         "schema_evolution": {
///             "enable_schema_evolution": False,
///         },
///         "table_creation": {
///             "enable_table_creation": True,
///         },
///         "append_only": True,
///         "service_execution_role_arn": example_aws_iam_role["arn"],
///     },
///     channel_name="example",
///     cluster_arn=example_aws_msk_cluster["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Msk.Channel("example", new()
///     {
///         TopicConfiguration = new Aws.Msk.Inputs.ChannelTopicConfigurationArgs
///         {
///             RecordConverter = new Aws.Msk.Inputs.ChannelTopicConfigurationRecordConverterArgs
///             {
///                 ValueConverter = "JSON",
///             },
///             RecordSchema = new Aws.Msk.Inputs.ChannelTopicConfigurationRecordSchemaArgs
///             {
///                 GsrArn = exampleAwsGlueSchema.Arn,
///             },
///             TopicArn = exampleAwsMskTopic.Arn,
///         },
///         IcebergDestination = new Aws.Msk.Inputs.ChannelIcebergDestinationArgs
///         {
///             Catalog = new Aws.Msk.Inputs.ChannelIcebergDestinationCatalogArgs
///             {
///                 WarehouseLocation = exampleAwsS3tablesTableBucket.Arn,
///             },
///             DeadLetterQueueS3 = new Aws.Msk.Inputs.ChannelIcebergDestinationDeadLetterQueueS3Args
///             {
///                 BucketArn = dlq.Arn,
///             },
///             DestinationTable = new Aws.Msk.Inputs.ChannelIcebergDestinationDestinationTableArgs
///             {
///                 PartitionSpec = new Aws.Msk.Inputs.ChannelIcebergDestinationDestinationTablePartitionSpecArgs
///                 {
///                     Sources = new[]
///                     {
///                         new Aws.Msk.Inputs.ChannelIcebergDestinationDestinationTablePartitionSpecSourceArgs
///                         {
///                             SourceName = "event_time",
///                         },
///                     },
///                     PartitionStrategy = "TIME_HOUR",
///                 },
///                 DestinationDatabaseName = "example_namespace",
///                 DestinationTableName = "example_table",
///             },
///             SchemaEvolution = new Aws.Msk.Inputs.ChannelIcebergDestinationSchemaEvolutionArgs
///             {
///                 EnableSchemaEvolution = false,
///             },
///             TableCreation = new Aws.Msk.Inputs.ChannelIcebergDestinationTableCreationArgs
///             {
///                 EnableTableCreation = true,
///             },
///             AppendOnly = true,
///             ServiceExecutionRoleArn = exampleAwsIamRole.Arn,
///         },
///         ChannelName = "example",
///         ClusterArn = exampleAwsMskCluster.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := msk.NewChannel(ctx, "example", &msk.ChannelArgs{
/// 			TopicConfiguration: &msk.ChannelTopicConfigurationArgs{
/// 				RecordConverter: &msk.ChannelTopicConfigurationRecordConverterArgs{
/// 					ValueConverter: pulumi.String("JSON"),
/// 				},
/// 				RecordSchema: &msk.ChannelTopicConfigurationRecordSchemaArgs{
/// 					GsrArn: pulumi.Any(exampleAwsGlueSchema.Arn),
/// 				},
/// 				TopicArn: pulumi.Any(exampleAwsMskTopic.Arn),
/// 			},
/// 			IcebergDestination: &msk.ChannelIcebergDestinationArgs{
/// 				Catalog: &msk.ChannelIcebergDestinationCatalogArgs{
/// 					WarehouseLocation: pulumi.Any(exampleAwsS3tablesTableBucket.Arn),
/// 				},
/// 				DeadLetterQueueS3: &msk.ChannelIcebergDestinationDeadLetterQueueS3Args{
/// 					BucketArn: pulumi.Any(dlq.Arn),
/// 				},
/// 				DestinationTable: &msk.ChannelIcebergDestinationDestinationTableArgs{
/// 					PartitionSpec: &msk.ChannelIcebergDestinationDestinationTablePartitionSpecArgs{
/// 						Sources: msk.ChannelIcebergDestinationDestinationTablePartitionSpecSourceArray{
/// 							&msk.ChannelIcebergDestinationDestinationTablePartitionSpecSourceArgs{
/// 								SourceName: pulumi.String("event_time"),
/// 							},
/// 						},
/// 						PartitionStrategy: pulumi.String("TIME_HOUR"),
/// 					},
/// 					DestinationDatabaseName: pulumi.String("example_namespace"),
/// 					DestinationTableName:    pulumi.String("example_table"),
/// 				},
/// 				SchemaEvolution: &msk.ChannelIcebergDestinationSchemaEvolutionArgs{
/// 					EnableSchemaEvolution: pulumi.Bool(false),
/// 				},
/// 				TableCreation: &msk.ChannelIcebergDestinationTableCreationArgs{
/// 					EnableTableCreation: pulumi.Bool(true),
/// 				},
/// 				AppendOnly:              pulumi.Bool(true),
/// 				ServiceExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			},
/// 			ChannelName: pulumi.String("example"),
/// 			ClusterArn:  pulumi.Any(exampleAwsMskCluster.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_msk_channel" "example" {
///   topic_configuration = {
///     record_converter = {
///       value_converter = "JSON"
///     }
///     record_schema = {
///       gsr_arn = exampleAwsGlueSchema.arn
///     }
///     topic_arn = exampleAwsMskTopic.arn
///   }
///   iceberg_destination = {
///     catalog = {
///       warehouse_location = exampleAwsS3tablesTableBucket.arn
///     }
///     dead_letter_queue_s3 = {
///       bucket_arn = dlq.arn
///     }
///     destination_table = {
///       partition_spec = {
///         sources = [{
///           "sourceName" = "event_time"
///         }]
///         partition_strategy = "TIME_HOUR"
///       }
///       destination_database_name = "example_namespace"
///       destination_table_name    = "example_table"
///     }
///     schema_evolution = {
///       enable_schema_evolution = false
///     }
///     table_creation = {
///       enable_table_creation = true
///     }
///     append_only                = true
///     service_execution_role_arn = exampleAwsIamRole.arn
///   }
///   channel_name = "example"
///   cluster_arn  = exampleAwsMskCluster.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.Channel;
/// import com.pulumi.aws.msk.ChannelArgs;
/// import com.pulumi.aws.msk.inputs.ChannelTopicConfigurationArgs;
/// import com.pulumi.aws.msk.inputs.ChannelTopicConfigurationRecordConverterArgs;
/// import com.pulumi.aws.msk.inputs.ChannelTopicConfigurationRecordSchemaArgs;
/// import com.pulumi.aws.msk.inputs.ChannelIcebergDestinationArgs;
/// import com.pulumi.aws.msk.inputs.ChannelIcebergDestinationCatalogArgs;
/// import com.pulumi.aws.msk.inputs.ChannelIcebergDestinationDeadLetterQueueS3Args;
/// import com.pulumi.aws.msk.inputs.ChannelIcebergDestinationDestinationTableArgs;
/// import com.pulumi.aws.msk.inputs.ChannelIcebergDestinationDestinationTablePartitionSpecArgs;
/// import com.pulumi.aws.msk.inputs.ChannelIcebergDestinationDestinationTablePartitionSpecSourceArgs;
/// import com.pulumi.aws.msk.inputs.ChannelIcebergDestinationSchemaEvolutionArgs;
/// import com.pulumi.aws.msk.inputs.ChannelIcebergDestinationTableCreationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Channel("example", ChannelArgs.builder()
///             .topicConfiguration(ChannelTopicConfigurationArgs.builder()
///                 .recordConverter(ChannelTopicConfigurationRecordConverterArgs.builder()
///                     .valueConverter("JSON")
///                     .build())
///                 .recordSchema(ChannelTopicConfigurationRecordSchemaArgs.builder()
///                     .gsrArn(exampleAwsGlueSchema.arn())
///                     .build())
///                 .topicArn(exampleAwsMskTopic.arn())
///                 .build())
///             .icebergDestination(ChannelIcebergDestinationArgs.builder()
///                 .catalog(ChannelIcebergDestinationCatalogArgs.builder()
///                     .warehouseLocation(exampleAwsS3tablesTableBucket.arn())
///                     .build())
///                 .deadLetterQueueS3(ChannelIcebergDestinationDeadLetterQueueS3Args.builder()
///                     .bucketArn(dlq.arn())
///                     .build())
///                 .destinationTable(ChannelIcebergDestinationDestinationTableArgs.builder()
///                     .partitionSpec(ChannelIcebergDestinationDestinationTablePartitionSpecArgs.builder()
///                         .sources(ChannelIcebergDestinationDestinationTablePartitionSpecSourceArgs.builder()
///                             .sourceName("event_time")
///                             .build())
///                         .partitionStrategy("TIME_HOUR")
///                         .build())
///                     .destinationDatabaseName("example_namespace")
///                     .destinationTableName("example_table")
///                     .build())
///                 .schemaEvolution(ChannelIcebergDestinationSchemaEvolutionArgs.builder()
///                     .enableSchemaEvolution(false)
///                     .build())
///                 .tableCreation(ChannelIcebergDestinationTableCreationArgs.builder()
///                     .enableTableCreation(true)
///                     .build())
///                 .appendOnly(true)
///                 .serviceExecutionRoleArn(exampleAwsIamRole.arn())
///                 .build())
///             .channelName("example")
///             .clusterArn(exampleAwsMskCluster.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:msk:Channel
///     properties:
///       topicConfiguration:
///         recordConverter:
///           valueConverter: JSON
///         recordSchema:
///           gsrArn: ${exampleAwsGlueSchema.arn}
///         topicArn: ${exampleAwsMskTopic.arn}
///       icebergDestination:
///         catalog:
///           warehouseLocation: ${exampleAwsS3tablesTableBucket.arn}
///         deadLetterQueueS3:
///           bucketArn: ${dlq.arn}
///         destinationTable:
///           partitionSpec:
///             sources:
///               - sourceName: event_time
///             partitionStrategy: TIME_HOUR
///           destinationDatabaseName: example_namespace
///           destinationTableName: example_table
///         schemaEvolution:
///           enableSchemaEvolution: false
///         tableCreation:
///           enableTableCreation: true
///         appendOnly: true
///         serviceExecutionRoleArn: ${exampleAwsIamRole.arn}
///       channelName: example
///       clusterArn: ${exampleAwsMskCluster.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the channel.
/// * `clusterArn` (String) ARN that uniquely identifies the cluster.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Managed Streaming for Kafka Channel using the `arn` and `clusterArn`. For example:
///
/// ```sh
/// $ pulumi import aws:msk/channel:Channel example arn:aws:kafka:us-west-2:123456789012:channel/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3/a1b2c3d4,arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class Channel extends pulumi.CustomResource {
  /// ARN of the channel.
  late final pulumi.Output<String> arn;
  /// Name of the channel. Must be unique within the cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> channelName;
  /// ARN that uniquely identifies the cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterArn;
  /// Type of destination configured for the channel.
  late final pulumi.Output<String> destinationType;
  /// AWS KMS encryption configuration applied to data at rest. Changing this forces a new resource to be created. See `encryptionConfiguration` Block below.
  late final pulumi.Output<ChannelEncryptionConfiguration?> encryptionConfiguration;
  /// Apache Iceberg destination for the channel. Exactly one of `icebergDestination` or `s3Destination` is required. With the exception of `dataFreshnessInSeconds`, changing an argument in this block forces a new resource to be created. See `icebergDestination` Block below.
  late final pulumi.Output<ChannelIcebergDestination?> icebergDestination;
  /// Destinations to which the channel publishes operational logs. Changing this forces a new resource to be created. See `loggingInfo` Block below.
  late final pulumi.Output<ChannelLoggingInfo?> loggingInfo;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon S3 destination for the channel. Exactly one of `icebergDestination` or `s3Destination` is required. With the exception of `dataFreshnessInSeconds`, changing an argument in this block forces a new resource to be created. See `s3Destination` Block below.
  late final pulumi.Output<ChannelS3Destination?> s3Destination;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ChannelTimeouts?> timeouts;
  /// Configuration of the Apache Kafka topic that feeds the channel. Changing this forces a new resource to be created. See `topicConfiguration` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ChannelTopicConfiguration> topicConfiguration;

  /// Creates a new [Channel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Channel]. {@macro pulumi_msk_channel_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Channel(
    String name, {
    ChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/channel:Channel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.48.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    channelName = registerOutput<String>('channelName');
    clusterArn = registerOutput<String>('clusterArn');
    destinationType = registerOutput<String>('destinationType');
    encryptionConfiguration = registerOutput<ChannelEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    icebergDestination = registerOutput<ChannelIcebergDestination?>('icebergDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelIcebergDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingInfo = registerOutput<ChannelLoggingInfo?>('loggingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelLoggingInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    s3Destination = registerOutput<ChannelS3Destination?>('s3Destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelS3Destination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ChannelTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    topicConfiguration = registerOutput<ChannelTopicConfiguration>('topicConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelTopicConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Channel] resource's state with the given [name] and [id].
  static Channel get(
    String name,
    pulumi.Input<String> id, {
    ChannelState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Channel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Channel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/channel:Channel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    channelName = registerOutput<String>('channelName');
    clusterArn = registerOutput<String>('clusterArn');
    destinationType = registerOutput<String>('destinationType');
    encryptionConfiguration = registerOutput<ChannelEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    icebergDestination = registerOutput<ChannelIcebergDestination?>('icebergDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelIcebergDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingInfo = registerOutput<ChannelLoggingInfo?>('loggingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelLoggingInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    s3Destination = registerOutput<ChannelS3Destination?>('s3Destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelS3Destination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ChannelTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    topicConfiguration = registerOutput<ChannelTopicConfiguration>('topicConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelTopicConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Channel] resource.
  Channel.reference(String urn)
    : super(
        'aws:msk/channel:Channel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    channelName = registerOutput<String>('channelName');
    clusterArn = registerOutput<String>('clusterArn');
    destinationType = registerOutput<String>('destinationType');
    encryptionConfiguration = registerOutput<ChannelEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    icebergDestination = registerOutput<ChannelIcebergDestination?>('icebergDestination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelIcebergDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingInfo = registerOutput<ChannelLoggingInfo?>('loggingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelLoggingInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    s3Destination = registerOutput<ChannelS3Destination?>('s3Destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelS3Destination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ChannelTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    topicConfiguration = registerOutput<ChannelTopicConfiguration>('topicConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelTopicConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
