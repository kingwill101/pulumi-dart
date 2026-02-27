import 'package:pulumi/pulumi.dart';
import 'bucket_args3.dart';

/// Provides a resource to manage an S3 Control Bucket.
///
/// > This functionality is for managing [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html). To manage S3 Buckets in an AWS Partition, see the `aws.s3.Bucket` resource.
///
/// ## Example Usage
///
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

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
