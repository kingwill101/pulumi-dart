import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_metadata_configuration_args.dart';
import 'bucket_metadata_configuration_metadata_configuration.dart';
import 'bucket_metadata_configuration_state.dart';
import 'bucket_metadata_configuration_timeouts.dart';

/// Manages Amazon S3 Metadata for a bucket.
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
/// const example = new aws.s3.BucketMetadataConfiguration("example", {
///     metadataConfiguration: {
///         inventoryTableConfiguration: {
///             configurationState: "ENABLED",
///         },
///         journalTableConfiguration: {
///             recordExpiration: {
///                 days: 7,
///                 expiration: "ENABLED",
///             },
///         },
///     },
///     bucket: exampleAwsS3Bucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketMetadataConfiguration("example",
///     metadata_configuration={
///         "inventory_table_configuration": {
///             "configuration_state": "ENABLED",
///         },
///         "journal_table_configuration": {
///             "record_expiration": {
///                 "days": 7,
///                 "expiration": "ENABLED",
///             },
///         },
///     },
///     bucket=example_aws_s3_bucket["bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketMetadataConfiguration("example", new()
///     {
///         MetadataConfiguration = new Aws.S3.Inputs.BucketMetadataConfigurationMetadataConfigurationArgs
///         {
///             InventoryTableConfiguration = new Aws.S3.Inputs.BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationArgs
///             {
///                 ConfigurationState = "ENABLED",
///             },
///             JournalTableConfiguration = new Aws.S3.Inputs.BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationArgs
///             {
///                 RecordExpiration = new Aws.S3.Inputs.BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpirationArgs
///                 {
///                     Days = 7,
///                     Expiration = "ENABLED",
///                 },
///             },
///         },
///         Bucket = exampleAwsS3Bucket.Bucket,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketMetadataConfiguration(ctx, "example", &s3.BucketMetadataConfigurationArgs{
/// 			MetadataConfiguration: &s3.BucketMetadataConfigurationMetadataConfigurationArgs{
/// 				InventoryTableConfiguration: &s3.BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationArgs{
/// 					ConfigurationState: pulumi.String("ENABLED"),
/// 				},
/// 				JournalTableConfiguration: &s3.BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationArgs{
/// 					RecordExpiration: &s3.BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpirationArgs{
/// 						Days:       pulumi.Int(7),
/// 						Expiration: pulumi.String("ENABLED"),
/// 					},
/// 				},
/// 			},
/// 			Bucket: pulumi.Any(exampleAwsS3Bucket.Bucket),
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
/// resource "aws_s3_bucketmetadataconfiguration" "example" {
///   metadata_configuration = {
///     inventory_table_configuration = {
///       configuration_state = "ENABLED"
///     }
///     journal_table_configuration = {
///       record_expiration = {
///         days       = 7
///         expiration = "ENABLED"
///       }
///     }
///   }
///   bucket = exampleAwsS3Bucket.bucket
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.BucketMetadataConfiguration;
/// import com.pulumi.aws.s3.BucketMetadataConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetadataConfigurationMetadataConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpirationArgs;
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
///         var example = new BucketMetadataConfiguration("example", BucketMetadataConfigurationArgs.builder()
///             .metadataConfiguration(BucketMetadataConfigurationMetadataConfigurationArgs.builder()
///                 .inventoryTableConfiguration(BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationArgs.builder()
///                     .configurationState("ENABLED")
///                     .build())
///                 .journalTableConfiguration(BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationArgs.builder()
///                     .recordExpiration(BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpirationArgs.builder()
///                         .days(7)
///                         .expiration("ENABLED")
///                         .build())
///                     .build())
///                 .build())
///             .bucket(exampleAwsS3Bucket.bucket())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketMetadataConfiguration
///     properties:
///       metadataConfiguration:
///         inventoryTableConfiguration:
///           configurationState: ENABLED
///         journalTableConfiguration:
///           recordExpiration:
///             days: 7
///             expiration: ENABLED
///       bucket: ${exampleAwsS3Bucket.bucket}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) S3 bucket name.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// **Using `pulumi import` to import** S3 bucket metadata configuration using the `bucket`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketMetadataConfiguration:BucketMetadataConfiguration example bucket-name
/// ```
class BucketMetadataConfiguration extends pulumi.CustomResource {
  /// General purpose bucket that you want to create the metadata configuration for.
  late final pulumi.Output<String> bucket;
  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;
  /// Metadata configuration. See `metadataConfiguration` Block for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<BucketMetadataConfigurationMetadataConfiguration> metadataConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<BucketMetadataConfigurationTimeouts?> timeouts;

  /// Creates a new [BucketMetadataConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketMetadataConfiguration]. {@macro pulumi_s3_bucket_metadata_configuration_bucket_metadata_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketMetadataConfiguration(
    String name, {
    BucketMetadataConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketMetadataConfiguration:BucketMetadataConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    metadataConfiguration = registerOutput<BucketMetadataConfigurationMetadataConfiguration>('metadataConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketMetadataConfigurationMetadataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    timeouts = registerOutput<BucketMetadataConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketMetadataConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [BucketMetadataConfiguration] resource's state with the given [name] and [id].
  static BucketMetadataConfiguration get(
    String name,
    pulumi.Input<String> id, {
    BucketMetadataConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketMetadataConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketMetadataConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketMetadataConfiguration:BucketMetadataConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    metadataConfiguration = registerOutput<BucketMetadataConfigurationMetadataConfiguration>('metadataConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketMetadataConfigurationMetadataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    timeouts = registerOutput<BucketMetadataConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketMetadataConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [BucketMetadataConfiguration] resource.
  BucketMetadataConfiguration.reference(String urn)
    : super(
        'aws:s3/bucketMetadataConfiguration:BucketMetadataConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    metadataConfiguration = registerOutput<BucketMetadataConfigurationMetadataConfiguration>('metadataConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketMetadataConfigurationMetadataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    timeouts = registerOutput<BucketMetadataConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketMetadataConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
