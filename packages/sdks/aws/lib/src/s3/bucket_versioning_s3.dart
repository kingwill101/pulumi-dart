import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_versioning_args.dart';
import 'bucket_versioning_state.dart';
import 'bucket_versioning_versioning_configuration.dart';

/// Provides a resource for controlling versioning on an S3 bucket.
/// Deleting this resource will either suspend versioning on the associated S3 bucket or
/// simply remove the resource from state if the associated S3 bucket is unversioned.
///
/// For more information, see [How S3 versioning works](https://docs.aws.amazon.com/AmazonS3/latest/userguide/manage-versioning-examples.html).
///
/// &gt; **NOTE:** If you are enabling versioning on the bucket for the first time, AWS recommends that you wait for 15 minutes after enabling versioning before issuing write operations (PUT or DELETE) on objects in the bucket.
///
/// &gt; This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### With Versioning Enabled
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example-bucket"});
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
///     bucket: example.id,
///     acl: "private",
/// });
/// const versioningExample = new aws.s3.BucketVersioning("versioning_example", {
///     bucket: example.id,
///     versioningConfiguration: {
///         status: "Enabled",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example-bucket")
/// example_bucket_acl = aws.s3.BucketAcl("example",
///     bucket=example.id,
///     acl="private")
/// versioning_example = aws.s3.BucketVersioning("versioning_example",
///     bucket=example.id,
///     versioning_configuration={
///         "status": "Enabled",
///     })
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
///         BucketName = "example-bucket",
///     });
///
///     var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = example.Id,
///         Acl = "private",
///     });
///
///     var versioningExample = new Aws.S3.BucketVersioning("versioning_example", new()
///     {
///         Bucket = example.Id,
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
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
/// 			Bucket: pulumi.String("example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketVersioning(ctx, "versioning_example", &s3.BucketVersioningArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
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
///   bucket = "example-bucket"
/// }
/// resource "aws_s3_bucketacl" "example" {
///   bucket = aws_s3_bucket.example.id
///   acl    = "private"
/// }
/// resource "aws_s3_bucketversioning" "versioning_example" {
///   bucket = aws_s3_bucket.example.id
///   versioning_configuration = {
///     status = "Enabled"
///   }
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
///             .bucket("example-bucket")
///             .build());
///
///         var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
///             .bucket(example.id())
///             .acl("private")
///             .build());
///
///         var versioningExample = new BucketVersioning("versioningExample", BucketVersioningArgs.builder()
///             .bucket(example.id())
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
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
///       bucket: example-bucket
///   exampleBucketAcl:
///     type: aws:s3:BucketAcl
///     name: example
///     properties:
///       bucket: ${example.id}
///       acl: private
///   versioningExample:
///     type: aws:s3:BucketVersioning
///     name: versioning_example
///     properties:
///       bucket: ${example.id}
///       versioningConfiguration:
///         status: Enabled
/// ```
///
///
/// ### With Versioning Disabled
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example-bucket"});
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
///     bucket: example.id,
///     acl: "private",
/// });
/// const versioningExample = new aws.s3.BucketVersioning("versioning_example", {
///     bucket: example.id,
///     versioningConfiguration: {
///         status: "Disabled",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example-bucket")
/// example_bucket_acl = aws.s3.BucketAcl("example",
///     bucket=example.id,
///     acl="private")
/// versioning_example = aws.s3.BucketVersioning("versioning_example",
///     bucket=example.id,
///     versioning_configuration={
///         "status": "Disabled",
///     })
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
///         BucketName = "example-bucket",
///     });
///
///     var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = example.Id,
///         Acl = "private",
///     });
///
///     var versioningExample = new Aws.S3.BucketVersioning("versioning_example", new()
///     {
///         Bucket = example.Id,
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Disabled",
///         },
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
/// 			Bucket: pulumi.String("example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketVersioning(ctx, "versioning_example", &s3.BucketVersioningArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Disabled"),
/// 			},
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
///   bucket = "example-bucket"
/// }
/// resource "aws_s3_bucketacl" "example" {
///   bucket = aws_s3_bucket.example.id
///   acl    = "private"
/// }
/// resource "aws_s3_bucketversioning" "versioning_example" {
///   bucket = aws_s3_bucket.example.id
///   versioning_configuration = {
///     status = "Disabled"
///   }
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
///             .bucket("example-bucket")
///             .build());
///
///         var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
///             .bucket(example.id())
///             .acl("private")
///             .build());
///
///         var versioningExample = new BucketVersioning("versioningExample", BucketVersioningArgs.builder()
///             .bucket(example.id())
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Disabled")
///                 .build())
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
///       bucket: example-bucket
///   exampleBucketAcl:
///     type: aws:s3:BucketAcl
///     name: example
///     properties:
///       bucket: ${example.id}
///       acl: private
///   versioningExample:
///     type: aws:s3:BucketVersioning
///     name: versioning_example
///     properties:
///       bucket: ${example.id}
///       versioningConfiguration:
///         status: Disabled
/// ```
///
///
/// ### Object Dependency On Versioning
///
/// When you create an object whose `versionId` you need and an `aws.s3.BucketVersioning` resource in the same configuration, you are more likely to have success by ensuring the `s3Object` depends either implicitly (see below) or explicitly (i.e., using `dependsOn = [aws_s3_bucket_versioning.example]`) on the `aws.s3.BucketVersioning` resource.
///
/// &gt; **NOTE:** For critical and/or production S3 objects, do not create a bucket, enable versioning, and create an object in the bucket within the same configuration. Doing so will not allow the AWS-recommended 15 minutes between enabling versioning and writing to the bucket.
///
/// This example shows the `aws_s3_object.example` depending implicitly on the versioning resource through the reference to `aws_s3_bucket_versioning.example.bucket` to define `bucket`:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "yotto"});
/// const exampleBucketVersioning = new aws.s3.BucketVersioning("example", {
///     bucket: example.id,
///     versioningConfiguration: {
///         status: "Enabled",
///     },
/// });
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
///     bucket: exampleBucketVersioning.id,
///     key: "droeloe",
///     source: new pulumi.asset.FileAsset("example.txt"),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="yotto")
/// example_bucket_versioning = aws.s3.BucketVersioning("example",
///     bucket=example.id,
///     versioning_configuration={
///         "status": "Enabled",
///     })
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
///     bucket=example_bucket_versioning.id,
///     key="droeloe",
///     source=pulumi.FileAsset("example.txt"))
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
///         BucketName = "yotto",
///     });
///
///     var exampleBucketVersioning = new Aws.S3.BucketVersioning("example", new()
///     {
///         Bucket = example.Id,
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///     });
///
///     var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
///     {
///         Bucket = exampleBucketVersioning.Id,
///         Key = "droeloe",
///         Source = new FileAsset("example.txt"),
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
/// 			Bucket: pulumi.String("yotto"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketVersioning, err := s3.NewBucketVersioning(ctx, "example", &s3.BucketVersioningArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// 			Bucket: exampleBucketVersioning.ID().ToIDOutput().ToStringOutput(),
/// 			Key:    pulumi.String("droeloe"),
/// 			Source: pulumi.NewFileAsset("example.txt"),
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
///   bucket = "yotto"
/// }
/// resource "aws_s3_bucketversioning" "example" {
///   bucket = aws_s3_bucket.example.id
///   versioning_configuration = {
///     status = "Enabled"
///   }
/// }
/// resource "aws_s3_bucketobjectv2" "example" {
///   bucket = aws_s3_bucketversioning.example.id
///   key    = "droeloe"
///   source = fileAsset("example.txt")
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
///             .bucket("yotto")
///             .build());
///
///         var exampleBucketVersioning = new BucketVersioning("exampleBucketVersioning", BucketVersioningArgs.builder()
///             .bucket(example.id())
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .build());
///
///         var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
///             .bucket(exampleBucketVersioning.id())
///             .key("droeloe")
///             .source(new FileAsset("example.txt"))
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
///       bucket: yotto
///   exampleBucketVersioning:
///     type: aws:s3:BucketVersioning
///     name: example
///     properties:
///       bucket: ${example.id}
///       versioningConfiguration:
///         status: Enabled
///   exampleBucketObjectv2:
///     type: aws:s3:BucketObjectv2
///     name: example
///     properties:
///       bucket: ${exampleBucketVersioning.id}
///       key: droeloe
///       source:
///         fn::fileAsset: example.txt
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) S3 bucket name.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket versioning using the `bucket` or using the `bucket` and `expectedBucketOwner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketVersioning:BucketVersioning example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketVersioning:BucketVersioning example bucket-name,123456789012
/// ```
class BucketVersioningS3 extends pulumi.CustomResource {
  /// Name of the S3 bucket.
  late final pulumi.Output<String> bucket;
  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;
  /// Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  late final pulumi.Output<String?> mfa;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block for the versioning parameters. See below.
  late final pulumi.Output<BucketVersioningVersioningConfiguration> versioningConfiguration;

  /// Creates a new [BucketVersioningS3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketVersioningS3]. {@macro pulumi_s3_bucket_versioning_bucket_versioning_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketVersioningS3(
    String name, {
    BucketVersioningArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketVersioning:BucketVersioning',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    mfa = registerOutput<String?>('mfa');
    region = registerOutput<String>('region');
    versioningConfiguration = registerOutput<BucketVersioningVersioningConfiguration>('versioningConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketVersioningVersioningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [BucketVersioningS3] resource's state with the given [name] and [id].
  static BucketVersioningS3 get(
    String name,
    pulumi.Input<String> id, {
    BucketVersioningState? state,
  }) {
    return BucketVersioningS3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketVersioningS3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketVersioning:BucketVersioning',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    mfa = registerOutput<String?>('mfa');
    region = registerOutput<String>('region');
    versioningConfiguration = registerOutput<BucketVersioningVersioningConfiguration>('versioningConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketVersioningVersioningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
