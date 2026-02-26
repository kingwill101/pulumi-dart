import 'package:pulumi/pulumi.dart';
import 'bucket_resource_access_args.dart';

/// Manages a Lightsail bucket resource access. Use this resource to grant a Lightsail resource (such as an instance) access to a specific bucket.
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
/// const exampleInstance = new aws.lightsail.Instance("example", {
/// name: "example-instance",
/// availabilityZone: "us-east-1b",
/// blueprintId: "amazon_linux_2",
/// bundleId: "nano_3_0",
/// });
/// const exampleBucketResourceAccess = new aws.lightsail.BucketResourceAccess("example", {
/// bucketName: example.id,
/// resourceName: exampleInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Bucket("example",
/// name="example-bucket",
/// bundle_id="small_1_0")
/// example_instance = aws.lightsail.Instance("example",
/// name="example-instance",
/// availability_zone="us-east-1b",
/// blueprint_id="amazon_linux_2",
/// bundle_id="nano_3_0")
/// example_bucket_resource_access = aws.lightsail.BucketResourceAccess("example",
/// bucket_name=example.id,
/// resource_name_=example_instance.id)
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
/// var exampleInstance = new Aws.LightSail.Instance("example", new()
/// {
/// Name = "example-instance",
/// AvailabilityZone = "us-east-1b",
/// BlueprintId = "amazon_linux_2",
/// BundleId = "nano_3_0",
/// });
///
/// var exampleBucketResourceAccess = new Aws.LightSail.BucketResourceAccess("example", new()
/// {
/// BucketName = example.Id,
/// ResourceName = exampleInstance.Id,
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
/// exampleInstance, err := lightsail.NewInstance(ctx, "example", &lightsail.InstanceArgs{
/// Name:             pulumi.String("example-instance"),
/// AvailabilityZone: pulumi.String("us-east-1b"),
/// BlueprintId:      pulumi.String("amazon_linux_2"),
/// BundleId:         pulumi.String("nano_3_0"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lightsail.NewBucketResourceAccess(ctx, "example", &lightsail.BucketResourceAccessArgs{
/// BucketName:   example.ID(),
/// ResourceName: exampleInstance.ID(),
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
/// import com.pulumi.aws.lightsail.Instance;
/// import com.pulumi.aws.lightsail.InstanceArgs;
/// import com.pulumi.aws.lightsail.BucketResourceAccess;
/// import com.pulumi.aws.lightsail.BucketResourceAccessArgs;
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
/// var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
/// .name("example-instance")
/// .availabilityZone("us-east-1b")
/// .blueprintId("amazon_linux_2")
/// .bundleId("nano_3_0")
/// .build());
///
/// var exampleBucketResourceAccess = new BucketResourceAccess("exampleBucketResourceAccess", BucketResourceAccessArgs.builder()
/// .bucketName(example.id())
/// .resourceName(exampleInstance.id())
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
/// exampleInstance:
/// type: aws:lightsail:Instance
/// name: example
/// properties:
/// name: example-instance
/// availabilityZone: us-east-1b
/// blueprintId: amazon_linux_2
/// bundleId: nano_3_0
/// exampleBucketResourceAccess:
/// type: aws:lightsail:BucketResourceAccess
/// name: example
/// properties:
/// bucketName: ${example.id}
/// resourceName: ${exampleInstance.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.lightsail.BucketResourceAccess`" pulumi-lang-dotnet="`aws.lightsail.BucketResourceAccess`" pulumi-lang-go="`lightsail.BucketResourceAccess`" pulumi-lang-python="`lightsail.BucketResourceAccess`" pulumi-lang-yaml="`aws.lightsail.BucketResourceAccess`" pulumi-lang-java="`aws.lightsail.BucketResourceAccess`">`aws.lightsail.BucketResourceAccess`</span> using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/bucketResourceAccess:BucketResourceAccess example example-bucket,example-instance
/// ```
class BucketResourceAccess extends CustomResource {
  /// Name of the bucket to grant access to.
  late final Output<String> bucketName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the resource to grant bucket access.
  late final Output<String> resourceName;

  BucketResourceAccess(
    String name, {
    BucketResourceAccessArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/bucketResourceAccess:BucketResourceAccess',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucketName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceName = Output.createUnknown<String>();
  }
}
