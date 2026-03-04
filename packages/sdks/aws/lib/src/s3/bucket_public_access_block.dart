import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_public_access_block_args.dart';
import 'bucket_public_access_block_state.dart';

/// Manages S3 bucket-level Public Access Block configuration. For more information about these settings, see the [AWS S3 Block Public Access documentation](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html).
///
/// &gt; This resource cannot be used with S3 directory buckets.
///
/// &gt; Setting `skip_destroy` to `true` means that the AWS Provider will not destroy a public access block, even when running `terraform destroy`. The configuration is thus an intentional dangling resource that is not managed by Terraform and will remain in-place in your AWS account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleBucketPublicAccessBlock = new aws.s3.BucketPublicAccessBlock("example", {
///     bucket: example.id,
///     blockPublicAcls: true,
///     blockPublicPolicy: true,
///     ignorePublicAcls: true,
///     restrictPublicBuckets: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_bucket_public_access_block = aws.s3.BucketPublicAccessBlock("example",
///     bucket=example.id,
///     block_public_acls=True,
///     block_public_policy=True,
///     ignore_public_acls=True,
///     restrict_public_buckets=True)
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
///     var exampleBucketPublicAccessBlock = new Aws.S3.BucketPublicAccessBlock("example", new()
///     {
///         Bucket = example.Id,
///         BlockPublicAcls = true,
///         BlockPublicPolicy = true,
///         IgnorePublicAcls = true,
///         RestrictPublicBuckets = true,
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
/// 		_, err = s3.NewBucketPublicAccessBlock(ctx, "example", &s3.BucketPublicAccessBlockArgs{
/// 			Bucket:                example.ID(),
/// 			BlockPublicAcls:       pulumi.Bool(true),
/// 			BlockPublicPolicy:     pulumi.Bool(true),
/// 			IgnorePublicAcls:      pulumi.Bool(true),
/// 			RestrictPublicBuckets: pulumi.Bool(true),
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
/// import com.pulumi.aws.s3.BucketPublicAccessBlock;
/// import com.pulumi.aws.s3.BucketPublicAccessBlockArgs;
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
///         var exampleBucketPublicAccessBlock = new BucketPublicAccessBlock("exampleBucketPublicAccessBlock", BucketPublicAccessBlockArgs.builder()
///             .bucket(example.id())
///             .blockPublicAcls(true)
///             .blockPublicPolicy(true)
///             .ignorePublicAcls(true)
///             .restrictPublicBuckets(true)
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
///   exampleBucketPublicAccessBlock:
///     type: aws:s3:BucketPublicAccessBlock
///     name: example
///     properties:
///       bucket: ${example.id}
///       blockPublicAcls: true
///       blockPublicPolicy: true
///       ignorePublicAcls: true
///       restrictPublicBuckets: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.s3.BucketPublicAccessBlock` using the bucket name. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketPublicAccessBlock:BucketPublicAccessBlock example my-bucket
/// ```
class BucketPublicAccessBlock extends pulumi.CustomResource {
  /// Whether Amazon S3 should block public ACLs for this bucket. Defaults to `false`. Enabling this setting does not affect existing policies or ACLs. When set to `true` causes the following behavior:
  /// * PUT Bucket ACL and PUT Object ACL calls will fail if the specified ACL allows public access.
  /// * PUT Object calls will fail if the request includes an object ACL.
  late final pulumi.Output<bool?> blockPublicAcls;

  /// Whether Amazon S3 should block public bucket policies for this bucket. Defaults to `false`. Enabling this setting does not affect the existing bucket policy. When set to `true` causes Amazon S3 to:
  /// * Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  late final pulumi.Output<bool?> blockPublicPolicy;

  /// S3 Bucket to which this Public Access Block configuration should be applied.
  late final pulumi.Output<String> bucket;

  /// Whether Amazon S3 should ignore public ACLs for this bucket. Defaults to `false`. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to `true` causes Amazon S3 to:
  /// * Ignore public ACLs on this bucket and any objects that it contains.
  late final pulumi.Output<bool?> ignorePublicAcls;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to `false`. Enabling this setting does not affect the previously stored bucket policy, except that public and cross-account access within the public bucket policy, including non-public delegation to specific accounts, is blocked. When set to `true`:
  /// * Only the bucket owner and AWS Services can access this buckets if it has a public policy.
  late final pulumi.Output<bool?> restrictPublicBuckets;

  /// Whether to retain the public access block upon destruction. If set to `true`, the resource is simply removed from state instead. This may be desirable in certain scenarios to prevent the removal of a public access block before deletion of the associated bucket.
  late final pulumi.Output<bool?> skipDestroy;

  /// Creates a new [BucketPublicAccessBlock].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketPublicAccessBlock]. {@macro pulumi_s3_bucket_public_access_block_bucket_public_access_block_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketPublicAccessBlock(
    String name, {
    BucketPublicAccessBlockArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:s3/bucketPublicAccessBlock:BucketPublicAccessBlock',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    blockPublicAcls = registerOutput<bool?>('blockPublicAcls');
    blockPublicPolicy = registerOutput<bool?>('blockPublicPolicy');
    bucket = registerOutput<String>('bucket');
    ignorePublicAcls = registerOutput<bool?>('ignorePublicAcls');
    region = registerOutput<String>('region');
    restrictPublicBuckets = registerOutput<bool?>('restrictPublicBuckets');
    skipDestroy = registerOutput<bool?>('skipDestroy');
  }

  /// Gets an existing [BucketPublicAccessBlock] resource's state with the given [name] and [id].
  static BucketPublicAccessBlock get(
    String name,
    pulumi.Input<String> id, {
    BucketPublicAccessBlockState? state,
  }) {
    return BucketPublicAccessBlock._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketPublicAccessBlock._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:s3/bucketPublicAccessBlock:BucketPublicAccessBlock',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    blockPublicAcls = registerOutput<bool?>('blockPublicAcls');
    blockPublicPolicy = registerOutput<bool?>('blockPublicPolicy');
    bucket = registerOutput<String>('bucket');
    ignorePublicAcls = registerOutput<bool?>('ignorePublicAcls');
    region = registerOutput<String>('region');
    restrictPublicBuckets = registerOutput<bool?>('restrictPublicBuckets');
    skipDestroy = registerOutput<bool?>('skipDestroy');
  }
}
