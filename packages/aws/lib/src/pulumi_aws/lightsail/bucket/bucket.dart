import 'package:pulumi/pulumi.dart';
import 'bucket_args.dart';

/// Manages a Lightsail bucket. Use this resource to create and manage object storage buckets for storing files, images, and other data in Lightsail.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Bucket("example", {
/// name: "example-bucket",
/// bundleId: "small_1_0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Bucket("example",
/// name="example-bucket",
/// bundle_id="small_1_0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LightSail.Bucket("example", new()
/// {
/// Name = "example-bucket",
/// BundleId = "small_1_0",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lightsail.NewBucket(ctx, "example", &lightsail.BucketArgs{
/// Name:     pulumi.String("example-bucket"),
/// BundleId: pulumi.String("small_1_0"),
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
/// import com.pulumi.aws.lightsail.Bucket;
/// import com.pulumi.aws.lightsail.BucketArgs;
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
/// var example = new Bucket("example", BucketArgs.builder()
/// .name("example-bucket")
/// .bundleId("small_1_0")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Bucket
/// properties:
/// name: example-bucket
/// bundleId: small_1_0
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.lightsail.Bucket`" pulumi-lang-dotnet="`aws.lightsail.Bucket`" pulumi-lang-go="`lightsail.Bucket`" pulumi-lang-python="`lightsail.Bucket`" pulumi-lang-yaml="`aws.lightsail.Bucket`" pulumi-lang-java="`aws.lightsail.Bucket`">`aws.lightsail.Bucket`</span> using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/bucket:Bucket example example-bucket
/// ```
class Bucket extends CustomResource {
  /// ARN of the Lightsail bucket.
  late final Output<String> arn;

  /// Availability Zone. Follows the format us-east-2a (case-sensitive).
  late final Output<String> availabilityZone;

  /// Bundle ID to use for the bucket. A bucket bundle specifies the monthly cost, storage space, and data transfer quota for a bucket. Use the [get-bucket-bundles](https://docs.aws.amazon.com/cli/latest/reference/lightsail/get-bucket-bundles.html) cli command to get a list of bundle IDs that you can specify.
  late final Output<String> bundleId;

  /// Date and time when the bucket was created.
  late final Output<String> createdAt;

  /// Whether to force delete non-empty buckets using `pulumi destroy`. AWS by default will not delete a bucket which is not empty, to prevent losing bucket data and affecting other resources in Lightsail. If <span pulumi-lang-nodejs="`forceDelete`" pulumi-lang-dotnet="`ForceDelete`" pulumi-lang-go="`forceDelete`" pulumi-lang-python="`force_delete`" pulumi-lang-yaml="`forceDelete`" pulumi-lang-java="`forceDelete`">`force_delete`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> the bucket will be deleted even when not empty.
  late final Output<bool?> forceDelete;

  /// Name for the bucket.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Support code for the resource. Include this code in your email to support when you have questions about a resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  late final Output<String> supportCode;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// URL of the bucket.
  late final Output<String> url;

  Bucket(
    String name, {
    BucketArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/bucket:Bucket',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.availabilityZone = Output.createUnknown<String>();
    this.bundleId = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.forceDelete = Output.createUnknown<bool?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.supportCode = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.url = Output.createUnknown<String>();
  }
}
