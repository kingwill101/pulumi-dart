import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingestion_destination_args.dart';
import 'ingestion_destination_destination_configuration.dart';
import 'ingestion_destination_processing_configuration.dart';
import 'ingestion_destination_state.dart';
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
///     appBundleArn: exampleAwsAppfabricAppBundle.arn,
///     ingestionArn: exampleAwsAppfabricIngestion.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appfabric.IngestionDestination("example",
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
///     },
///     app_bundle_arn=example_aws_appfabric_app_bundle["arn"],
///     ingestion_arn=example_aws_appfabric_ingestion["arn"])
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
///         AppBundleArn = exampleAwsAppfabricAppBundle.Arn,
///         IngestionArn = exampleAwsAppfabricIngestion.Arn,
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
/// 			AppBundleArn: pulumi.Any(exampleAwsAppfabricAppBundle.Arn),
/// 			IngestionArn: pulumi.Any(exampleAwsAppfabricIngestion.Arn),
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
/// resource "aws_appfabric_ingestiondestination" "example" {
///   processing_configuration = {
///     audit_log = {
///       format = "json"
///       schema = "raw"
///     }
///   }
///   destination_configuration = {
///     audit_log = {
///       destination = {
///         s3_bucket = {
///           bucket_name = exampleAwsS3Bucket.bucket
///         }
///       }
///     }
///   }
///   app_bundle_arn = exampleAwsAppfabricAppBundle.arn
///   ingestion_arn  = exampleAwsAppfabricIngestion.arn
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
///         var example = new IngestionDestination("example", IngestionDestinationArgs.builder()
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
///             .appBundleArn(exampleAwsAppfabricAppBundle.arn())
///             .ingestionArn(exampleAwsAppfabricIngestion.arn())
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
///       processingConfiguration:
///         auditLog:
///           format: json
///           schema: raw
///       destinationConfiguration:
///         auditLog:
///           destination:
///             s3Bucket:
///               bucketName: ${exampleAwsS3Bucket.bucket}
///       appBundleArn: ${exampleAwsAppfabricAppBundle.arn}
///       ingestionArn: ${exampleAwsAppfabricIngestion.arn}
/// ```
class IngestionDestination extends pulumi.CustomResource {
  /// ARN of the app bundle to use for the request.
  late final pulumi.Output<String> appBundleArn;
  /// ARN of the Ingestion Destination.
  late final pulumi.Output<String> arn;
  /// Configuration for the destination of ingested data. See `destinationConfiguration` Block below.
  late final pulumi.Output<IngestionDestinationDestinationConfiguration> destinationConfiguration;
  /// ARN of the ingestion to use for the request.
  late final pulumi.Output<String> ingestionArn;
  /// Configuration for how ingested data is processed. See `processingConfiguration` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<IngestionDestinationProcessingConfiguration> processingConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    appBundleArn = registerOutput<String>('appBundleArn');
    arn = registerOutput<String>('arn');
    destinationConfiguration = registerOutput<IngestionDestinationDestinationConfiguration>('destinationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngestionDestinationDestinationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingestionArn = registerOutput<String>('ingestionArn');
    processingConfiguration = registerOutput<IngestionDestinationProcessingConfiguration>('processingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngestionDestinationProcessingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<IngestionDestinationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngestionDestinationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [IngestionDestination] resource's state with the given [name] and [id].
  static IngestionDestination get(
    String name,
    pulumi.Input<String> id, {
    IngestionDestinationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IngestionDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IngestionDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/ingestionDestination:IngestionDestination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appBundleArn = registerOutput<String>('appBundleArn');
    arn = registerOutput<String>('arn');
    destinationConfiguration = registerOutput<IngestionDestinationDestinationConfiguration>('destinationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngestionDestinationDestinationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingestionArn = registerOutput<String>('ingestionArn');
    processingConfiguration = registerOutput<IngestionDestinationProcessingConfiguration>('processingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngestionDestinationProcessingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<IngestionDestinationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngestionDestinationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [IngestionDestination] resource.
  IngestionDestination.reference(String urn)
    : super(
        'aws:appfabric/ingestionDestination:IngestionDestination',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appBundleArn = registerOutput<String>('appBundleArn');
    arn = registerOutput<String>('arn');
    destinationConfiguration = registerOutput<IngestionDestinationDestinationConfiguration>('destinationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngestionDestinationDestinationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ingestionArn = registerOutput<String>('ingestionArn');
    processingConfiguration = registerOutput<IngestionDestinationProcessingConfiguration>('processingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngestionDestinationProcessingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<IngestionDestinationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngestionDestinationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
