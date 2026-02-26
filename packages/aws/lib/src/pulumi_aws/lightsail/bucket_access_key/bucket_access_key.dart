import 'package:pulumi/pulumi.dart';
import 'bucket_access_key_args.dart';

/// Manages a Lightsail bucket access key. Use this resource to create credentials that allow programmatic access to your Lightsail bucket via API requests.
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
/// const exampleBucketAccessKey = new aws.lightsail.BucketAccessKey("example", {bucketName: example.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Bucket("example",
/// name="example-bucket",
/// bundle_id="small_1_0")
/// example_bucket_access_key = aws.lightsail.BucketAccessKey("example", bucket_name=example.id)
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
/// var exampleBucketAccessKey = new Aws.LightSail.BucketAccessKey("example", new()
/// {
/// BucketName = example.Id,
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
/// example, err := lightsail.NewBucket(ctx, "example", &lightsail.BucketArgs{
/// Name:     pulumi.String("example-bucket"),
/// BundleId: pulumi.String("small_1_0"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lightsail.NewBucketAccessKey(ctx, "example", &lightsail.BucketAccessKeyArgs{
/// BucketName: example.ID(),
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
/// import com.pulumi.aws.lightsail.BucketAccessKey;
/// import com.pulumi.aws.lightsail.BucketAccessKeyArgs;
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
/// var exampleBucketAccessKey = new BucketAccessKey("exampleBucketAccessKey", BucketAccessKeyArgs.builder()
/// .bucketName(example.id())
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
/// exampleBucketAccessKey:
/// type: aws:lightsail:BucketAccessKey
/// name: example
/// properties:
/// bucketName: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.lightsail.BucketAccessKey`" pulumi-lang-dotnet="`aws.lightsail.BucketAccessKey`" pulumi-lang-go="`lightsail.BucketAccessKey`" pulumi-lang-python="`lightsail.BucketAccessKey`" pulumi-lang-yaml="`aws.lightsail.BucketAccessKey`" pulumi-lang-java="`aws.lightsail.BucketAccessKey`">`aws.lightsail.BucketAccessKey`</span> using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/bucketAccessKey:BucketAccessKey example example-bucket,AKIAIOSFODNN7EXAMPLE
/// ```
class BucketAccessKey extends CustomResource {
  /// Access key ID.
  late final Output<String> accessKeyId;

  /// Name of the bucket that the access key will belong to and grant access to.
  late final Output<String> bucketName;

  /// Date and time when the access key was created.
  late final Output<String> createdAt;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Secret access key used to sign requests. This attribute is not available for imported resources. Note that this will be written to the state file.
  late final Output<String> secretAccessKey;

  /// Status of the access key.
  late final Output<String> status;

  BucketAccessKey(
    String name, {
    BucketAccessKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/bucketAccessKey:BucketAccessKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessKeyId = registerOutput<String>('accessKeyId');
    this.bucketName = registerOutput<String>('bucketName');
    this.createdAt = registerOutput<String>('createdAt');
    this.region = registerOutput<String>('region');
    this.secretAccessKey = registerOutput<String>('secretAccessKey');
    this.status = registerOutput<String>('status');
  }
}
