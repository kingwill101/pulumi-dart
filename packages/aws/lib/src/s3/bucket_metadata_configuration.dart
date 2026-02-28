import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_metadata_configuration_args.dart';
import 'bucket_metadata_configuration_metadata_configuration.dart';
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
///     bucket: exampleAwsS3Bucket.bucket,
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketMetadataConfiguration("example",
///     bucket=example_aws_s3_bucket["bucket"],
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
///     var example = new Aws.S3.BucketMetadataConfiguration("example", new()
///     {
///         Bucket = exampleAwsS3Bucket.Bucket,
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
/// 			Bucket: pulumi.Any(exampleAwsS3Bucket.Bucket),
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
/// import com.pulumi.aws.s3.BucketMetadataConfiguration;
/// import com.pulumi.aws.s3.BucketMetadataConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetadataConfigurationMetadataConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetadataConfigurationMetadataConfigurationInventoryTableConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpirationArgs;
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
///         var example = new BucketMetadataConfiguration("example", BucketMetadataConfigurationArgs.builder()
///             .bucket(exampleAwsS3Bucket.bucket())
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
///       bucket: ${exampleAwsS3Bucket.bucket}
///       metadataConfiguration:
///         inventoryTableConfiguration:
///           configurationState: ENABLED
///         journalTableConfiguration:
///           recordExpiration:
///             days: 7
///             expiration: ENABLED
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
/// * `account_id` (String) AWS Account where this resource is managed.
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
  /// Metadata configuration. See `metadata_configuration` Block for details.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.metadataConfiguration = registerOutput<BucketMetadataConfigurationMetadataConfiguration>('metadataConfiguration');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<BucketMetadataConfigurationTimeouts?>('timeouts');
  }
}
