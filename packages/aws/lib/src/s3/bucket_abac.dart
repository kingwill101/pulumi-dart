import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_abac_abac_status.dart';
import 'bucket_abac_args.dart';

/// Manages ABAC (Attribute Based Access Control) for an AWS S3 (Simple Storage) Bucket.
/// See the [AWS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/buckets-tagging-enable-abac.html) on enabling ABAC for general purpose buckets for additional information.
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
/// const example = new aws.s3.Bucket("example", {bucket: "bucket-name"});
/// const exampleBucketAbac = new aws.s3.BucketAbac("example", {
///     bucket: example.bucket,
///     abacStatus: {
///         status: "Enabled",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="bucket-name")
/// example_bucket_abac = aws.s3.BucketAbac("example",
///     bucket=example.bucket,
///     abac_status={
///         "status": "Enabled",
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
///         BucketName = "bucket-name",
///     });
///
///     var exampleBucketAbac = new Aws.S3.BucketAbac("example", new()
///     {
///         Bucket = example.BucketName,
///         AbacStatus = new Aws.S3.Inputs.BucketAbacAbacStatusArgs
///         {
///             Status = "Enabled",
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
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("bucket-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAbac(ctx, "example", &s3.BucketAbacArgs{
/// 			Bucket: example.Bucket,
/// 			AbacStatus: &s3.BucketAbacAbacStatusArgs{
/// 				Status: pulumi.String("Enabled"),
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
/// import com.pulumi.aws.s3.BucketAbac;
/// import com.pulumi.aws.s3.BucketAbacArgs;
/// import com.pulumi.aws.s3.inputs.BucketAbacAbacStatusArgs;
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
///             .bucket("bucket-name")
///             .build());
///
///         var exampleBucketAbac = new BucketAbac("exampleBucketAbac", BucketAbacArgs.builder()
///             .bucket(example.bucket())
///             .abacStatus(BucketAbacAbacStatusArgs.builder()
///                 .status("Enabled")
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
///       bucket: bucket-name
///   exampleBucketAbac:
///     type: aws:s3:BucketAbac
///     name: example
///     properties:
///       bucket: ${example.bucket}
///       abacStatus:
///         status: Enabled
/// ```
///
///
/// ## Import
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the Terraform AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
///
/// Using `pulumi import`, import S3 (Simple Storage) Bucket ABAC using the `bucket` or `bucket` and `expected_bucket_owner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the Terraform AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketAbac:BucketAbac example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the Terraform AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketAbac:BucketAbac example bucket-name,123456789012
/// ```
class BucketAbac extends pulumi.CustomResource {
  /// ABAC status configuration. See `abac_status` Block for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<BucketAbacAbacStatus> abacStatus;
  /// General purpose bucket that you want to create the metadata configuration for.
  late final pulumi.Output<String> bucket;
  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [BucketAbac].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketAbac]. {@macro pulumi_s3_bucket_abac_bucket_abac_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketAbac(
    String name, {
    BucketAbacArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketAbac:BucketAbac',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.abacStatus = registerOutput<BucketAbacAbacStatus>('abacStatus');
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.region = registerOutput<String>('region');
  }
}
