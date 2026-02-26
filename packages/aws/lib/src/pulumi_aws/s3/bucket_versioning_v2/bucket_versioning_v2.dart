import 'package:pulumi/pulumi.dart';
import '../bucket_versioning_v2_versioning_configuration/bucket_versioning_v2_versioning_configuration.dart';
import 'bucket_versioning_v2_args.dart';

/// Provides a resource for controlling versioning on an S3 bucket.
/// Deleting this resource will either suspend versioning on the associated S3 bucket or
/// simply remove the resource from state if the associated S3 bucket is unversioned.
///
/// For more information, see [How S3 versioning works](https://docs.aws.amazon.com/AmazonS3/latest/userguide/manage-versioning-examples.html).
///
/// > **NOTE:** If you are enabling versioning on the bucket for the first time, AWS recommends that you wait for 15 minutes after enabling versioning before issuing write operations (PUT or DELETE) on objects in the bucket.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### With Versioning Enabled
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example-bucket"});
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
/// bucket: example.id,
/// acl: "private",
/// });
/// const versioningExample = new aws.s3.BucketVersioning("versioning_example", {
/// bucket: example.id,
/// versioningConfiguration: {
/// status: "Enabled",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example-bucket")
/// example_bucket_acl = aws.s3.BucketAcl("example",
/// bucket=example.id,
/// acl="private")
/// versioning_example = aws.s3.BucketVersioning("versioning_example",
/// bucket=example.id,
/// versioning_configuration={
/// "status": "Enabled",
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
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example-bucket",
/// });
///
/// var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
/// {
/// Bucket = example.Id,
/// Acl = "private",
/// });
///
/// var versioningExample = new Aws.S3.BucketVersioning("versioning_example", new()
/// {
/// Bucket = example.Id,
/// VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
/// {
/// Status = "Enabled",
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
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("example-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// Bucket: example.ID(),
/// Acl:    pulumi.String("private"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketVersioning(ctx, "versioning_example", &s3.BucketVersioningArgs{
/// Bucket: example.ID(),
/// VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// Status: pulumi.String("Enabled"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.BucketVersioning;
/// import com.pulumi.aws.s3.BucketVersioningArgs;
/// import com.pulumi.aws.s3.inputs.BucketVersioningVersioningConfigurationArgs;
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
/// .bucket("example-bucket")
/// .build());
///
/// var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
/// .bucket(example.id())
/// .acl("private")
/// .build());
///
/// var versioningExample = new BucketVersioning("versioningExample", BucketVersioningArgs.builder()
/// .bucket(example.id())
/// .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
/// .status("Enabled")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucket: example-bucket
/// exampleBucketAcl:
/// type: aws:s3:BucketAcl
/// name: example
/// properties:
/// bucket: ${example.id}
/// acl: private
/// versioningExample:
/// type: aws:s3:BucketVersioning
/// name: versioning_example
/// properties:
/// bucket: ${example.id}
/// versioningConfiguration:
/// status: Enabled
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Versioning Disabled
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example-bucket"});
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
/// bucket: example.id,
/// acl: "private",
/// });
/// const versioningExample = new aws.s3.BucketVersioning("versioning_example", {
/// bucket: example.id,
/// versioningConfiguration: {
/// status: "Disabled",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example-bucket")
/// example_bucket_acl = aws.s3.BucketAcl("example",
/// bucket=example.id,
/// acl="private")
/// versioning_example = aws.s3.BucketVersioning("versioning_example",
/// bucket=example.id,
/// versioning_configuration={
/// "status": "Disabled",
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
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example-bucket",
/// });
///
/// var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
/// {
/// Bucket = example.Id,
/// Acl = "private",
/// });
///
/// var versioningExample = new Aws.S3.BucketVersioning("versioning_example", new()
/// {
/// Bucket = example.Id,
/// VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
/// {
/// Status = "Disabled",
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
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("example-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// Bucket: example.ID(),
/// Acl:    pulumi.String("private"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketVersioning(ctx, "versioning_example", &s3.BucketVersioningArgs{
/// Bucket: example.ID(),
/// VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// Status: pulumi.String("Disabled"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.BucketVersioning;
/// import com.pulumi.aws.s3.BucketVersioningArgs;
/// import com.pulumi.aws.s3.inputs.BucketVersioningVersioningConfigurationArgs;
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
/// .bucket("example-bucket")
/// .build());
///
/// var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
/// .bucket(example.id())
/// .acl("private")
/// .build());
///
/// var versioningExample = new BucketVersioning("versioningExample", BucketVersioningArgs.builder()
/// .bucket(example.id())
/// .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
/// .status("Disabled")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucket: example-bucket
/// exampleBucketAcl:
/// type: aws:s3:BucketAcl
/// name: example
/// properties:
/// bucket: ${example.id}
/// acl: private
/// versioningExample:
/// type: aws:s3:BucketVersioning
/// name: versioning_example
/// properties:
/// bucket: ${example.id}
/// versioningConfiguration:
/// status: Disabled
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Object Dependency On Versioning
///
/// When you create an object whose <span pulumi-lang-nodejs="`versionId`" pulumi-lang-dotnet="`VersionId`" pulumi-lang-go="`versionId`" pulumi-lang-python="`version_id`" pulumi-lang-yaml="`versionId`" pulumi-lang-java="`versionId`">`version_id`</span> you need and an <span pulumi-lang-nodejs="`aws.s3.BucketVersioning`" pulumi-lang-dotnet="`aws.s3.BucketVersioning`" pulumi-lang-go="`s3.BucketVersioning`" pulumi-lang-python="`s3.BucketVersioning`" pulumi-lang-yaml="`aws.s3.BucketVersioning`" pulumi-lang-java="`aws.s3.BucketVersioning`">`aws.s3.BucketVersioning`</span> resource in the same configuration, you are more likely to have success by ensuring the <span pulumi-lang-nodejs="`s3Object`" pulumi-lang-dotnet="`S3Object`" pulumi-lang-go="`s3Object`" pulumi-lang-python="`s3_object`" pulumi-lang-yaml="`s3Object`" pulumi-lang-java="`s3Object`">`s3_object`</span> depends either implicitly (see below) or explicitly (i.e., using <span pulumi-lang-nodejs="`dependsOn " pulumi-lang-dotnet="`DependsOn " pulumi-lang-go="`dependsOn " pulumi-lang-python="`depends_on " pulumi-lang-yaml="`dependsOn " pulumi-lang-java="`dependsOn ">`depends_on </span>= [aws_s3_bucket_versioning.example]`) on the <span pulumi-lang-nodejs="`aws.s3.BucketVersioning`" pulumi-lang-dotnet="`aws.s3.BucketVersioning`" pulumi-lang-go="`s3.BucketVersioning`" pulumi-lang-python="`s3.BucketVersioning`" pulumi-lang-yaml="`aws.s3.BucketVersioning`" pulumi-lang-java="`aws.s3.BucketVersioning`">`aws.s3.BucketVersioning`</span> resource.
///
/// > **NOTE:** For critical and/or production S3 objects, do not create a bucket, enable versioning, and create an object in the bucket within the same configuration. Doing so will not allow the AWS-recommended 15 minutes between enabling versioning and writing to the bucket.
///
/// This example shows the `aws_s3_object.example` depending implicitly on the versioning resource through the reference to `aws_s3_bucket_versioning.example.bucket` to define <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "yotto"});
/// const exampleBucketVersioning = new aws.s3.BucketVersioning("example", {
/// bucket: example.id,
/// versioningConfiguration: {
/// status: "Enabled",
/// },
/// });
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
/// bucket: exampleBucketVersioning.id,
/// key: "droeloe",
/// source: new pulumi.asset.FileAsset("example.txt"),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="yotto")
/// example_bucket_versioning = aws.s3.BucketVersioning("example",
/// bucket=example.id,
/// versioning_configuration={
/// "status": "Enabled",
/// })
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
/// bucket=example_bucket_versioning.id,
/// key="droeloe",
/// source=pulumi.FileAsset("example.txt"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "yotto",
/// });
///
/// var exampleBucketVersioning = new Aws.S3.BucketVersioning("example", new()
/// {
/// Bucket = example.Id,
/// VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
/// {
/// Status = "Enabled",
/// },
/// });
///
/// var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
/// {
/// Bucket = exampleBucketVersioning.Id,
/// Key = "droeloe",
/// Source = new FileAsset("example.txt"),
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
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("yotto"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleBucketVersioning, err := s3.NewBucketVersioning(ctx, "example", &s3.BucketVersioningArgs{
/// Bucket: example.ID(),
/// VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// Status: pulumi.String("Enabled"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// Bucket: exampleBucketVersioning.ID(),
/// Key:    pulumi.String("droeloe"),
/// Source: pulumi.NewFileAsset("example.txt"),
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
/// import com.pulumi.aws.s3.BucketVersioning;
/// import com.pulumi.aws.s3.BucketVersioningArgs;
/// import com.pulumi.aws.s3.inputs.BucketVersioningVersioningConfigurationArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.asset.FileAsset;
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
/// .bucket("yotto")
/// .build());
///
/// var exampleBucketVersioning = new BucketVersioning("exampleBucketVersioning", BucketVersioningArgs.builder()
/// .bucket(example.id())
/// .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
/// .status("Enabled")
/// .build())
/// .build());
///
/// var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
/// .bucket(exampleBucketVersioning.id())
/// .key("droeloe")
/// .source(new FileAsset("example.txt"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucket: yotto
/// exampleBucketVersioning:
/// type: aws:s3:BucketVersioning
/// name: example
/// properties:
/// bucket: ${example.id}
/// versioningConfiguration:
/// status: Enabled
/// exampleBucketObjectv2:
/// type: aws:s3:BucketObjectv2
/// name: example
/// properties:
/// bucket: ${exampleBucketVersioning.id}
/// key: droeloe
/// source:
/// fn::FileAsset: example.txt
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> (String) S3 bucket name.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket versioning using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> or using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>:
///
/// ```sh
/// $ pulumi import aws:s3/bucketVersioningV2:BucketVersioningV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketVersioningV2:BucketVersioningV2 example bucket-name,123456789012
/// ```
class BucketVersioningV2 extends CustomResource {
  /// Name of the S3 bucket.
  late final Output<String> bucket;

  /// Account ID of the expected bucket owner.
  late final Output<String?> expectedBucketOwner;

  /// Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  late final Output<String?> mfa;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for the versioning parameters. See below.
  late final Output<BucketVersioningV2VersioningConfiguration>
      versioningConfiguration;

  BucketVersioningV2(
    String name, {
    BucketVersioningV2Args? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketVersioningV2:BucketVersioningV2',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = Output.createUnknown<String>();
    this.expectedBucketOwner = Output.createUnknown<String?>();
    this.mfa = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.versioningConfiguration =
        Output.createUnknown<BucketVersioningV2VersioningConfiguration>();
  }
}
