import 'package:pulumi/pulumi.dart';
import 'bucket_args3.dart';

/// Provides a resource to manage an S3 Control Bucket.
///
/// > This functionality is for managing [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html). To manage S3 Buckets in an AWS Partition, see the <span pulumi-lang-nodejs="`aws.s3.Bucket`" pulumi-lang-dotnet="`aws.s3.Bucket`" pulumi-lang-go="`s3.Bucket`" pulumi-lang-python="`s3.Bucket`" pulumi-lang-yaml="`aws.s3.Bucket`" pulumi-lang-java="`aws.s3.Bucket`">`aws.s3.Bucket`</span> resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3control.Bucket("example", {
/// bucket: "example",
/// outpostId: exampleAwsOutpostsOutpost.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.Bucket("example",
/// bucket="example",
/// outpost_id=example_aws_outposts_outpost["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3Control.Bucket("example", new()
/// {
/// BucketName = "example",
/// OutpostId = exampleAwsOutpostsOutpost.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := s3control.NewBucket(ctx, "example", &s3control.BucketArgs{
/// Bucket:    pulumi.String("example"),
/// OutpostId: pulumi.Any(exampleAwsOutpostsOutpost.Id),
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
/// import com.pulumi.aws.s3control.Bucket;
/// import com.pulumi.aws.s3control.BucketArgs;
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
/// .bucket("example")
/// .outpostId(exampleAwsOutpostsOutpost.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3control:Bucket
/// properties:
/// bucket: example
/// outpostId: ${exampleAwsOutpostsOutpost.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) ARN of the bucket.
///
///
/// Using `pulumi import`, import S3 Control Buckets using Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/bucket:Bucket example arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-12345678/bucket/example
/// ```
class Bucket3 extends CustomResource {
  /// Amazon Resource Name (ARN) of the bucket.
  late final Output<String> arn;

  /// Name of the bucket.
  late final Output<String> bucket;

  /// UTC creation date in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final Output<String> creationDate;

  /// Identifier of the Outpost to contain this bucket.
  late final Output<String> outpostId;

  /// Boolean whether Public Access Block is enabled.
  late final Output<bool> publicAccessBlockEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Bucket3(
    String name, {
    BucketArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/bucket:Bucket',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.creationDate = registerOutput<String>('creationDate');
    this.outpostId = registerOutput<String>('outpostId');
    this.publicAccessBlockEnabled =
        registerOutput<bool>('publicAccessBlockEnabled');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
