import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_destination_args.dart';
import 'ingestion_destination_destination_configuration.dart';
import 'ingestion_destination_processing_configuration.dart';
import 'ingestion_destination_timeouts.dart';

/// Resource for managing an AWS AppFabric Ingestion Destination.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appfabric.IngestionDestination("example", {
///     appBundleArn: exampleAwsAppfabricAppBundle.arn,
///     ingestionArn: exampleAwsAppfabricIngestion.arn,
///     processingConfiguration: {
///         auditLog: {
///             format: "json",
///             schema: "raw",
///         },
///     },
///     destinationConfiguration: {
///         auditLog: {
///             destination: {
///                 s3Bucket: {
///                     bucketName: exampleAwsS3Bucket.bucket,
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
/// example = aws.appfabric.IngestionDestination("example",
///     app_bundle_arn=example_aws_appfabric_app_bundle["arn"],
///     ingestion_arn=example_aws_appfabric_ingestion["arn"],
///     processing_configuration={
///         "audit_log": {
///             "format": "json",
///             "schema": "raw",
///         },
///     },
///     destination_configuration={
///         "audit_log": {
///             "destination": {
///                 "s3_bucket": {
///                     "bucket_name": example_aws_s3_bucket["bucket"],
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
///     var example = new Aws.AppFabric.IngestionDestination("example", new()
///     {
///         AppBundleArn = exampleAwsAppfabricAppBundle.Arn,
///         IngestionArn = exampleAwsAppfabricIngestion.Arn,
///         ProcessingConfiguration = new Aws.AppFabric.Inputs.IngestionDestinationProcessingConfigurationArgs
///         {
///             AuditLog = new Aws.AppFabric.Inputs.IngestionDestinationProcessingConfigurationAuditLogArgs
///             {
///                 Format = "json",
///                 Schema = "raw",
///             },
///         },
///         DestinationConfiguration = new Aws.AppFabric.Inputs.IngestionDestinationDestinationConfigurationArgs
///         {
///             AuditLog = new Aws.AppFabric.Inputs.IngestionDestinationDestinationConfigurationAuditLogArgs
///             {
///                 Destination = new Aws.AppFabric.Inputs.IngestionDestinationDestinationConfigurationAuditLogDestinationArgs
///                 {
///                     S3Bucket = new Aws.AppFabric.Inputs.IngestionDestinationDestinationConfigurationAuditLogDestinationS3BucketArgs
///                     {
///                         BucketName = exampleAwsS3Bucket.Bucket,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appfabric"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appfabric.NewIngestionDestination(ctx, "example", &appfabric.IngestionDestinationArgs{
/// 			AppBundleArn: pulumi.Any(exampleAwsAppfabricAppBundle.Arn),
/// 			IngestionArn: pulumi.Any(exampleAwsAppfabricIngestion.Arn),
/// 			ProcessingConfiguration: &appfabric.IngestionDestinationProcessingConfigurationArgs{
/// 				AuditLog: &appfabric.IngestionDestinationProcessingConfigurationAuditLogArgs{
/// 					Format: pulumi.String("json"),
/// 					Schema: pulumi.String("raw"),
/// 				},
/// 			},
/// 			DestinationConfiguration: &appfabric.IngestionDestinationDestinationConfigurationArgs{
/// 				AuditLog: &appfabric.IngestionDestinationDestinationConfigurationAuditLogArgs{
/// 					Destination: &appfabric.IngestionDestinationDestinationConfigurationAuditLogDestinationArgs{
/// 						S3Bucket: &appfabric.IngestionDestinationDestinationConfigurationAuditLogDestinationS3BucketArgs{
/// 							BucketName: pulumi.Any(exampleAwsS3Bucket.Bucket),
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
/// import com.pulumi.aws.appfabric.IngestionDestination;
/// import com.pulumi.aws.appfabric.IngestionDestinationArgs;
/// import com.pulumi.aws.appfabric.inputs.IngestionDestinationProcessingConfigurationArgs;
/// import com.pulumi.aws.appfabric.inputs.IngestionDestinationProcessingConfigurationAuditLogArgs;
/// import com.pulumi.aws.appfabric.inputs.IngestionDestinationDestinationConfigurationArgs;
/// import com.pulumi.aws.appfabric.inputs.IngestionDestinationDestinationConfigurationAuditLogArgs;
/// import com.pulumi.aws.appfabric.inputs.IngestionDestinationDestinationConfigurationAuditLogDestinationArgs;
/// import com.pulumi.aws.appfabric.inputs.IngestionDestinationDestinationConfigurationAuditLogDestinationS3BucketArgs;
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
///         var example = new IngestionDestination("example", IngestionDestinationArgs.builder()
///             .appBundleArn(exampleAwsAppfabricAppBundle.arn())
///             .ingestionArn(exampleAwsAppfabricIngestion.arn())
///             .processingConfiguration(IngestionDestinationProcessingConfigurationArgs.builder()
///                 .auditLog(IngestionDestinationProcessingConfigurationAuditLogArgs.builder()
///                     .format("json")
///                     .schema("raw")
///                     .build())
///                 .build())
///             .destinationConfiguration(IngestionDestinationDestinationConfigurationArgs.builder()
///                 .auditLog(IngestionDestinationDestinationConfigurationAuditLogArgs.builder()
///                     .destination(IngestionDestinationDestinationConfigurationAuditLogDestinationArgs.builder()
///                         .s3Bucket(IngestionDestinationDestinationConfigurationAuditLogDestinationS3BucketArgs.builder()
///                             .bucketName(exampleAwsS3Bucket.bucket())
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
///   example:
///     type: aws:appfabric:IngestionDestination
///     properties:
///       appBundleArn: ${exampleAwsAppfabricAppBundle.arn}
///       ingestionArn: ${exampleAwsAppfabricIngestion.arn}
///       processingConfiguration:
///         auditLog:
///           format: json
///           schema: raw
///       destinationConfiguration:
///         auditLog:
///           destination:
///             s3Bucket:
///               bucketName: ${exampleAwsS3Bucket.bucket}
/// ```
class IngestionDestination extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  late final pulumi.Output<String> appBundleArn;

  /// ARN of the Ingestion Destination.
  late final pulumi.Output<String> arn;

  /// Contains information about the destination of ingested data.
  late final pulumi.Output<IngestionDestinationDestinationConfiguration>
  destinationConfiguration;

  /// The Amazon Resource Name (ARN) of the ingestion to use for the request.
  late final pulumi.Output<String> ingestionArn;

  /// Contains information about how ingested data is processed.
  late final pulumi.Output<IngestionDestinationProcessingConfiguration>
  processingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<IngestionDestinationTimeouts?> timeouts;

  /// Creates a new [IngestionDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IngestionDestination]. {@macro pulumi_appfabric_ingestion_destination_ingestion_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IngestionDestination(
    String name, {
    IngestionDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:appfabric/ingestionDestination:IngestionDestination',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.appBundleArn = registerOutput<String>('appBundleArn');
    this.arn = registerOutput<String>('arn');
    this.destinationConfiguration =
        registerOutput<IngestionDestinationDestinationConfiguration>(
          'destinationConfiguration',
        );
    this.ingestionArn = registerOutput<String>('ingestionArn');
    this.processingConfiguration =
        registerOutput<IngestionDestinationProcessingConfiguration>(
          'processingConfiguration',
        );
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<IngestionDestinationTimeouts?>('timeouts');
  }
}
