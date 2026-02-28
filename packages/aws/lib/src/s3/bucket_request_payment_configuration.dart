import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_request_payment_configuration_args.dart';

/// Provides an S3 bucket request payment configuration resource. For more information, see [Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).
///
/// > **NOTE:** Destroying an `aws.s3.BucketRequestPaymentConfiguration` resource resets the bucket's `payer` to the S3 default: the bucket owner.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketRequestPaymentConfiguration("example", {
///     bucket: exampleAwsS3Bucket.id,
///     payer: "Requester",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketRequestPaymentConfiguration("example",
///     bucket=example_aws_s3_bucket["id"],
///     payer="Requester")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketRequestPaymentConfiguration("example", new()
///     {
///         Bucket = exampleAwsS3Bucket.Id,
///         Payer = "Requester",
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
/// 		_, err := s3.NewBucketRequestPaymentConfiguration(ctx, "example", &s3.BucketRequestPaymentConfigurationArgs{
/// 			Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// 			Payer:  pulumi.String("Requester"),
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
/// import com.pulumi.aws.s3.BucketRequestPaymentConfiguration;
/// import com.pulumi.aws.s3.BucketRequestPaymentConfigurationArgs;
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
///         var example = new BucketRequestPaymentConfiguration("example", BucketRequestPaymentConfigurationArgs.builder()
///             .bucket(exampleAwsS3Bucket.id())
///             .payer("Requester")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketRequestPaymentConfiguration
///     properties:
///       bucket: ${exampleAwsS3Bucket.id}
///       payer: Requester
/// ```
///
///
/// ## Import
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket request payment configuration using the `bucket` or using the `bucket` and `expected_bucket_owner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketRequestPaymentConfiguration:BucketRequestPaymentConfiguration example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketRequestPaymentConfiguration:BucketRequestPaymentConfiguration example bucket-name,123456789012
/// ```
class BucketRequestPaymentConfiguration extends pulumi.CustomResource {
  /// Name of the bucket.
  late final pulumi.Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;

  /// Specifies who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  late final pulumi.Output<String> payer;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [BucketRequestPaymentConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketRequestPaymentConfiguration]. {@macro pulumi_s3_bucket_request_payment_configuration_bucket_request_payment_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketRequestPaymentConfiguration(
    String name, {
    BucketRequestPaymentConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketRequestPaymentConfiguration:BucketRequestPaymentConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.payer = registerOutput<String>('payer');
    this.region = registerOutput<String>('region');
  }
}
