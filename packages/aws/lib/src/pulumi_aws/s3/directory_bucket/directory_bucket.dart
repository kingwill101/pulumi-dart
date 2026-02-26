import 'package:pulumi/pulumi.dart';
import '../directory_bucket_location/directory_bucket_location.dart';
import 'directory_bucket_args.dart';

/// Provides an Amazon S3 Express directory bucket resource.
///
/// ## Example Usage
///
/// ### Availability Zone
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.DirectoryBucket("example", {
/// bucket: "example--usw2-az1--x-s3",
/// location: {
/// name: "usw2-az1",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.DirectoryBucket("example",
/// bucket="example--usw2-az1--x-s3",
/// location={
/// "name": "usw2-az1",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.DirectoryBucket("example", new()
/// {
/// Bucket = "example--usw2-az1--x-s3",
/// Location = new Aws.S3.Inputs.DirectoryBucketLocationArgs
/// {
/// Name = "usw2-az1",
/// },
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
/// _, err := s3.NewDirectoryBucket(ctx, "example", &s3.DirectoryBucketArgs{
/// Bucket: pulumi.String("example--usw2-az1--x-s3"),
/// Location: &s3.DirectoryBucketLocationArgs{
/// Name: pulumi.String("usw2-az1"),
/// },
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
/// import com.pulumi.aws.s3.DirectoryBucket;
/// import com.pulumi.aws.s3.DirectoryBucketArgs;
/// import com.pulumi.aws.s3.inputs.DirectoryBucketLocationArgs;
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
/// var example = new DirectoryBucket("example", DirectoryBucketArgs.builder()
/// .bucket("example--usw2-az1--x-s3")
/// .location(DirectoryBucketLocationArgs.builder()
/// .name("usw2-az1")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:DirectoryBucket
/// properties:
/// bucket: example--usw2-az1--x-s3
/// location:
/// name: usw2-az1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Dedicated Local Zone
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleLocalZone = new aws.s3.DirectoryBucket("example_local_zone", {
/// bucket: "example--usw2-xxx-lz1--x-s3",
/// location: {
/// name: "usw2-xxx-lz1",
/// type: "LocalZone",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_local_zone = aws.s3.DirectoryBucket("example_local_zone",
/// bucket="example--usw2-xxx-lz1--x-s3",
/// location={
/// "name": "usw2-xxx-lz1",
/// "type": "LocalZone",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleLocalZone = new Aws.S3.DirectoryBucket("example_local_zone", new()
/// {
/// Bucket = "example--usw2-xxx-lz1--x-s3",
/// Location = new Aws.S3.Inputs.DirectoryBucketLocationArgs
/// {
/// Name = "usw2-xxx-lz1",
/// Type = "LocalZone",
/// },
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
/// _, err := s3.NewDirectoryBucket(ctx, "example_local_zone", &s3.DirectoryBucketArgs{
/// Bucket: pulumi.String("example--usw2-xxx-lz1--x-s3"),
/// Location: &s3.DirectoryBucketLocationArgs{
/// Name: pulumi.String("usw2-xxx-lz1"),
/// Type: pulumi.String("LocalZone"),
/// },
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
/// import com.pulumi.aws.s3.DirectoryBucket;
/// import com.pulumi.aws.s3.DirectoryBucketArgs;
/// import com.pulumi.aws.s3.inputs.DirectoryBucketLocationArgs;
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
/// var exampleLocalZone = new DirectoryBucket("exampleLocalZone", DirectoryBucketArgs.builder()
/// .bucket("example--usw2-xxx-lz1--x-s3")
/// .location(DirectoryBucketLocationArgs.builder()
/// .name("usw2-xxx-lz1")
/// .type("LocalZone")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleLocalZone:
/// type: aws:s3:DirectoryBucket
/// name: example_local_zone
/// properties:
/// bucket: example--usw2-xxx-lz1--x-s3
/// location:
/// name: usw2-xxx-lz1
/// type: LocalZone
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> (String) Name of the S3 Directory Bucket.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 bucket using <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:s3/directoryBucket:DirectoryBucket example example--usw2-az1--x-s3
/// ```
class DirectoryBucket extends CustomResource {
  /// ARN of the bucket.
  late final Output<String> arn;

  /// Name of the bucket. The name must be in the format `<span pulumi-lang-nodejs="[bucketName]" pulumi-lang-dotnet="[BucketName]" pulumi-lang-go="[bucketName]" pulumi-lang-python="[bucket_name]" pulumi-lang-yaml="[bucketName]" pulumi-lang-java="[bucketName]">[bucket_name]</span>--[azid]--x-s3`. Use the <span pulumi-lang-nodejs="`aws.s3.Bucket`" pulumi-lang-dotnet="`aws.s3.Bucket`" pulumi-lang-go="`s3.Bucket`" pulumi-lang-python="`s3.Bucket`" pulumi-lang-yaml="`aws.s3.Bucket`" pulumi-lang-java="`aws.s3.Bucket`">`aws.s3.Bucket`</span> resource to manage general purpose buckets.
  late final Output<String> bucket;

  /// Data redundancy. Valid values: `SingleAvailabilityZone`, `SingleLocalZone`. The default value depends on the value of the `location.type` attribute.
  late final Output<String> dataRedundancy;

  /// Boolean that indicates all objects should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Once this parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  late final Output<bool> forceDestroy;

  /// Bucket location. See Location below for more details.
  late final Output<DirectoryBucketLocation> location;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the bucket. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Bucket type. Valid values: `Directory`.
  late final Output<String> type;

  DirectoryBucket(
    String name, {
    DirectoryBucketArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/directoryBucket:DirectoryBucket',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.dataRedundancy = registerOutput<String>('dataRedundancy');
    this.forceDestroy = registerOutput<bool>('forceDestroy');
    this.location = registerOutput<DirectoryBucketLocation>('location');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
