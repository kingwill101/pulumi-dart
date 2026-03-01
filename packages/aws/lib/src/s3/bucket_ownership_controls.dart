import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_ownership_controls_args.dart';
import 'bucket_ownership_controls_rule.dart';

/// Provides a resource to manage S3 Bucket Ownership Controls. For more information, see the [S3 Developer Guide](https://docs.aws.amazon.com/AmazonS3/latest/dev/about-object-ownership.html).
///
/// > This resource cannot be used with S3 directory buckets.
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
///     bucket: example.id,
///     rule: {
///         objectOwnership: "BucketOwnerPreferred",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_bucket_ownership_controls = aws.s3.BucketOwnershipControls("example",
///     bucket=example.id,
///     rule={
///         "object_ownership": "BucketOwnerPreferred",
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
///         BucketName = "example",
///     });
///
///     var exampleBucketOwnershipControls = new Aws.S3.BucketOwnershipControls("example", new()
///     {
///         Bucket = example.Id,
///         Rule = new Aws.S3.Inputs.BucketOwnershipControlsRuleArgs
///         {
///             ObjectOwnership = "BucketOwnerPreferred",
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
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketOwnershipControls(ctx, "example", &s3.BucketOwnershipControlsArgs{
/// 			Bucket: example.ID(),
/// 			Rule: &s3.BucketOwnershipControlsRuleArgs{
/// 				ObjectOwnership: pulumi.String("BucketOwnerPreferred"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .bucket(example.id())
///             .rule(BucketOwnershipControlsRuleArgs.builder()
///                 .objectOwnership("BucketOwnerPreferred")
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
///       bucket: example
///   exampleBucketOwnershipControls:
///     type: aws:s3:BucketOwnershipControls
///     name: example
///     properties:
///       bucket: ${example.id}
///       rule:
///         objectOwnership: BucketOwnerPreferred
/// ```
///
///
/// ## Import
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.region = registerOutput<String>('region');
    this.rule = registerOutput<BucketOwnershipControlsRule>('rule');
  }
}
