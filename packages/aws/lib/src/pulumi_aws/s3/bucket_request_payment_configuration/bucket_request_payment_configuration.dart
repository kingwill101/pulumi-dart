import 'package:pulumi/pulumi.dart';
import 'bucket_request_payment_configuration_args.dart';

/// Provides an S3 bucket request payment configuration resource. For more information, see [Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html).
///
/// > **NOTE:** Destroying an <span pulumi-lang-nodejs="`aws.s3.BucketRequestPaymentConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketRequestPaymentConfiguration`" pulumi-lang-go="`s3.BucketRequestPaymentConfiguration`" pulumi-lang-python="`s3.BucketRequestPaymentConfiguration`" pulumi-lang-yaml="`aws.s3.BucketRequestPaymentConfiguration`" pulumi-lang-java="`aws.s3.BucketRequestPaymentConfiguration`">`aws.s3.BucketRequestPaymentConfiguration`</span> resource resets the bucket's <span pulumi-lang-nodejs="`payer`" pulumi-lang-dotnet="`Payer`" pulumi-lang-go="`payer`" pulumi-lang-python="`payer`" pulumi-lang-yaml="`payer`" pulumi-lang-java="`payer`">`payer`</span> to the S3 default: the bucket owner.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketRequestPaymentConfiguration("example", {
/// bucket: exampleAwsS3Bucket.id,
/// payer: "Requester",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketRequestPaymentConfiguration("example",
/// bucket=example_aws_s3_bucket["id"],
/// payer="Requester")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.BucketRequestPaymentConfiguration("example", new()
/// {
/// Bucket = exampleAwsS3Bucket.Id,
/// Payer = "Requester",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := s3.NewBucketRequestPaymentConfiguration(ctx, "example", &s3.BucketRequestPaymentConfigurationArgs{
/// Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// Payer:  pulumi.String("Requester"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new BucketRequestPaymentConfiguration("example", BucketRequestPaymentConfigurationArgs.builder()
/// .bucket(exampleAwsS3Bucket.id())
/// .payer("Requester")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:BucketRequestPaymentConfiguration
/// properties:
/// bucket: ${exampleAwsS3Bucket.id}
/// payer: Requester
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket request payment configuration using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> or using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>:
///
/// ```sh
/// $ pulumi import aws:s3/bucketRequestPaymentConfiguration:BucketRequestPaymentConfiguration example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketRequestPaymentConfiguration:BucketRequestPaymentConfiguration example bucket-name,123456789012
/// ```
class BucketRequestPaymentConfiguration extends CustomResource {
  /// Name of the bucket.
  late final Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final Output<String?> expectedBucketOwner;

  /// Specifies who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  late final Output<String> payer;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  BucketRequestPaymentConfiguration(
    String name, {
    BucketRequestPaymentConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketRequestPaymentConfiguration:BucketRequestPaymentConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = Output.createUnknown<String>();
    this.expectedBucketOwner = Output.createUnknown<String?>();
    this.payer = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
