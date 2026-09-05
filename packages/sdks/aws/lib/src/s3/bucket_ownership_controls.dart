import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_ownership_controls_args.dart';
import 'bucket_ownership_controls_rule.dart';
import 'bucket_ownership_controls_state.dart';

/// Provides a resource to manage S3 Bucket Ownership Controls. For more information, see the [S3 Developer Guide](https://docs.aws.amazon.com/AmazonS3/latest/dev/about-object-ownership.html).
///
/// &gt; This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleBucketOwnershipControls = new aws.s3.BucketOwnershipControls("example", {
///     rule: {
///         objectOwnership: "BucketOwnerPreferred",
///     },
///     bucket: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_bucket_ownership_controls = aws.s3.BucketOwnershipControls("example",
///     rule={
///         "object_ownership": "BucketOwnerPreferred",
///     },
///     bucket=example.id)
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
///         BucketName = "example",
///     });
///
///     var exampleBucketOwnershipControls = new Aws.S3.BucketOwnershipControls("example", new()
///     {
///         Rule = new Aws.S3.Inputs.BucketOwnershipControlsRuleArgs
///         {
///             ObjectOwnership = "BucketOwnerPreferred",
///         },
///         Bucket = example.Id,
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
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketOwnershipControls(ctx, "example", &s3.BucketOwnershipControlsArgs{
/// 			Rule: &s3.BucketOwnershipControlsRuleArgs{
/// 				ObjectOwnership: pulumi.String("BucketOwnerPreferred"),
/// 			},
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
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
///   bucket = "example"
/// }
/// resource "aws_s3_bucketownershipcontrols" "example" {
///   rule = {
///     object_ownership = "BucketOwnerPreferred"
///   }
///   bucket = aws_s3_bucket.example.id
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
/// import com.pulumi.aws.s3.BucketOwnershipControls;
/// import com.pulumi.aws.s3.BucketOwnershipControlsArgs;
/// import com.pulumi.aws.s3.inputs.BucketOwnershipControlsRuleArgs;
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
///             .bucket("example")
///             .build());
///
///         var exampleBucketOwnershipControls = new BucketOwnershipControls("exampleBucketOwnershipControls", BucketOwnershipControlsArgs.builder()
///             .rule(BucketOwnershipControlsRuleArgs.builder()
///                 .objectOwnership("BucketOwnerPreferred")
///                 .build())
///             .bucket(example.id())
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
///       bucket: example
///   exampleBucketOwnershipControls:
///     type: aws:s3:BucketOwnershipControls
///     name: example
///     properties:
///       rule:
///         objectOwnership: BucketOwnerPreferred
///       bucket: ${example.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) Name of the bucket.
///
/// #### Optional
///
/// * `accountId` (String) Account ID where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 Bucket Ownership Controls using S3 Bucket name. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketOwnershipControls:BucketOwnershipControls example my-bucket
/// ```
class BucketOwnershipControls extends pulumi.CustomResource {
  /// Name of the bucket that you want to associate this access point with.
  late final pulumi.Output<String> bucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block(s) with Ownership Controls rules. Detailed below.
  late final pulumi.Output<BucketOwnershipControlsRule> rule;

  /// Creates a new [BucketOwnershipControls].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketOwnershipControls]. {@macro pulumi_s3_bucket_ownership_controls_bucket_ownership_controls_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketOwnershipControls(
    String name, {
    BucketOwnershipControlsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketOwnershipControls:BucketOwnershipControls',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    region = registerOutput<String>('region');
    rule = registerOutput<BucketOwnershipControlsRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketOwnershipControlsRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [BucketOwnershipControls] resource's state with the given [name] and [id].
  static BucketOwnershipControls get(
    String name,
    pulumi.Input<String> id, {
    BucketOwnershipControlsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketOwnershipControls._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketOwnershipControls._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketOwnershipControls:BucketOwnershipControls',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    region = registerOutput<String>('region');
    rule = registerOutput<BucketOwnershipControlsRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketOwnershipControlsRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [BucketOwnershipControls] resource.
  BucketOwnershipControls.reference(String urn)
    : super(
        'aws:s3/bucketOwnershipControls:BucketOwnershipControls',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    region = registerOutput<String>('region');
    rule = registerOutput<BucketOwnershipControlsRule>('rule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketOwnershipControlsRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
