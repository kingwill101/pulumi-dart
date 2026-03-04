import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_s3_control_args.dart';
import 'bucket_s3_control_state.dart';

/// Provides a resource to manage an S3 Control Bucket.
///
/// &gt; This functionality is for managing [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html). To manage S3 Buckets in an AWS Partition, see the `aws.s3.Bucket` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3control.Bucket("example", {
///     bucket: "example",
///     outpostId: exampleAwsOutpostsOutpost.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.Bucket("example",
///     bucket="example",
///     outpost_id=example_aws_outposts_outpost["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3Control.Bucket("example", new()
///     {
///         BucketName = "example",
///         OutpostId = exampleAwsOutpostsOutpost.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3control.NewBucket(ctx, "example", &s3control.BucketArgs{
/// 			Bucket:    pulumi.String("example"),
/// 			OutpostId: pulumi.Any(exampleAwsOutpostsOutpost.Id),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example")
///             .outpostId(exampleAwsOutpostsOutpost.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3control:Bucket
///     properties:
///       bucket: example
///       outpostId: ${exampleAwsOutpostsOutpost.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the bucket.
///
///
/// Using `pulumi import`, import S3 Control Buckets using Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/bucket:Bucket example arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-12345678/bucket/example
/// ```
class BucketS3Control extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the bucket.
  late final pulumi.Output<String> arn;

  /// Name of the bucket.
  late final pulumi.Output<String> bucket;

  /// UTC creation date in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String> creationDate;

  /// Identifier of the Outpost to contain this bucket.
  late final pulumi.Output<String> outpostId;

  /// Boolean whether Public Access Block is enabled.
  late final pulumi.Output<bool> publicAccessBlockEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [BucketS3Control].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketS3Control]. {@macro pulumi_s3_control_bucket_bucket_s3_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketS3Control(
    String name, {
    BucketS3ControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:s3control/bucket:Bucket',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    creationDate = registerOutput<String>('creationDate');
    outpostId = registerOutput<String>('outpostId');
    publicAccessBlockEnabled = registerOutput<bool>('publicAccessBlockEnabled');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [BucketS3Control] resource's state with the given [name] and [id].
  static BucketS3Control get(
    String name,
    pulumi.Input<String> id, {
    BucketS3ControlState? state,
  }) {
    return BucketS3Control._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketS3Control._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:s3control/bucket:Bucket',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    bucket = registerOutput<String>('bucket');
    creationDate = registerOutput<String>('creationDate');
    outpostId = registerOutput<String>('outpostId');
    publicAccessBlockEnabled = registerOutput<bool>('publicAccessBlockEnabled');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
