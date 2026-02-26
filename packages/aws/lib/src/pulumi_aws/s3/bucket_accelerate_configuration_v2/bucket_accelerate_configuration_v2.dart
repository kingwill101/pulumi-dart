import 'package:pulumi/pulumi.dart';
import 'bucket_accelerate_configuration_v2_args.dart';

/// Provides an S3 bucket accelerate configuration resource. See the [Requirements for using Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transfer-acceleration.html#transfer-acceleration-requirements) for more details.
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
/// const mybucket = new aws.s3.Bucket("mybucket", {bucket: "mybucket"});
/// const example = new aws.s3.BucketAccelerateConfiguration("example", {
/// bucket: mybucket.id,
/// status: "Enabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mybucket = aws.s3.Bucket("mybucket", bucket="mybucket")
/// example = aws.s3.BucketAccelerateConfiguration("example",
/// bucket=mybucket.id,
/// status="Enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var mybucket = new Aws.S3.Bucket("mybucket", new()
/// {
/// BucketName = "mybucket",
/// });
///
/// var example = new Aws.S3.BucketAccelerateConfiguration("example", new()
/// {
/// Bucket = mybucket.Id,
/// Status = "Enabled",
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
/// mybucket, err := s3.NewBucket(ctx, "mybucket", &s3.BucketArgs{
/// Bucket: pulumi.String("mybucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAccelerateConfiguration(ctx, "example", &s3.BucketAccelerateConfigurationArgs{
/// Bucket: mybucket.ID(),
/// Status: pulumi.String("Enabled"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAccelerateConfiguration;
/// import com.pulumi.aws.s3.BucketAccelerateConfigurationArgs;
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
/// var mybucket = new Bucket("mybucket", BucketArgs.builder()
/// .bucket("mybucket")
/// .build());
///
/// var example = new BucketAccelerateConfiguration("example", BucketAccelerateConfigurationArgs.builder()
/// .bucket(mybucket.id())
/// .status("Enabled")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// mybucket:
/// type: aws:s3:Bucket
/// properties:
/// bucket: mybucket
/// example:
/// type: aws:s3:BucketAccelerateConfiguration
/// properties:
/// bucket: ${mybucket.id}
/// status: Enabled
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import.** For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>:
///
/// ```sh
/// $ pulumi import aws:s3/bucketAccelerateConfigurationV2:BucketAccelerateConfigurationV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketAccelerateConfigurationV2:BucketAccelerateConfigurationV2 example bucket-name,123456789012
/// ```
class BucketAccelerateConfigurationV2 extends CustomResource {
  /// Name of the bucket.
  late final Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final Output<String?> expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Transfer acceleration state of the bucket. Valid values: `Enabled`, `Suspended`.
  late final Output<String> status;

  BucketAccelerateConfigurationV2(
    String name, {
    BucketAccelerateConfigurationV2Args? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketAccelerateConfigurationV2:BucketAccelerateConfigurationV2',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }
}
