import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_abac_abac_status.dart';
import 'bucket_abac_args.dart';
import 'bucket_abac_state.dart';

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
///     abacStatus: {
///         status: "Enabled",
///     },
///     bucket: example.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="bucket-name")
/// example_bucket_abac = aws.s3.BucketAbac("example",
///     abac_status={
///         "status": "Enabled",
///     },
///     bucket=example.bucket)
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
///         AbacStatus = new Aws.S3.Inputs.BucketAbacAbacStatusArgs
///         {
///             Status = "Enabled",
///         },
///         Bucket = example.BucketName,
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
/// 			AbacStatus: &s3.BucketAbacAbacStatusArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 			Bucket: example.Bucket,
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
/// resource "aws_s3_bucket" "example" {
///   bucket = "bucket-name"
/// }
/// resource "aws_s3_bucketabac" "example" {
///   abac_status = {
///     status = "Enabled"
///   }
///   bucket = aws_s3_bucket.example.bucket
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("bucket-name")
///             .build());
///
///         var exampleBucketAbac = new BucketAbac("exampleBucketAbac", BucketAbacArgs.builder()
///             .abacStatus(BucketAbacAbacStatusArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .bucket(example.bucket())
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
///       abacStatus:
///         status: Enabled
///       bucket: ${example.bucket}
/// ```
///
///
/// ## Import
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the Terraform AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
///
/// Using `pulumi import`, import S3 (Simple Storage) Bucket ABAC using the `bucket` or `bucket` and `expectedBucketOwner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the Terraform AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketAbac:BucketAbac example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the Terraform AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketAbac:BucketAbac example bucket-name,123456789012
/// ```
class BucketAbac extends pulumi.CustomResource {
  /// ABAC status configuration. See `abacStatus` Block for details.
  late final pulumi.Output<BucketAbacAbacStatus> abacStatus;
  /// General purpose bucket that you want to create the metadata configuration for.
  ///
  /// The following arguments are optional:
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    abacStatus = registerOutput<BucketAbacAbacStatus>('abacStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketAbacAbacStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [BucketAbac] resource's state with the given [name] and [id].
  static BucketAbac get(
    String name,
    pulumi.Input<String> id, {
    BucketAbacState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketAbac._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketAbac._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketAbac:BucketAbac',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    abacStatus = registerOutput<BucketAbacAbacStatus>('abacStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketAbacAbacStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [BucketAbac] resource.
  BucketAbac.reference(String urn)
    : super(
        'aws:s3/bucketAbac:BucketAbac',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    abacStatus = registerOutput<BucketAbacAbacStatus>('abacStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketAbacAbacStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    region = registerOutput<String>('region');
  }
}
