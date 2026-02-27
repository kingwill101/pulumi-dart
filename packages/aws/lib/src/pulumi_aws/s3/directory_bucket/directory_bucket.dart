import 'package:pulumi/pulumi.dart' as pulumi;
import '../directory_bucket_location/directory_bucket_location.dart';
import 'directory_bucket_args.dart';

/// Provides an Amazon S3 Express directory bucket resource.
///
/// ## Example Usage
///
/// ### Availability Zone
///
///
///
/// ### Dedicated Local Zone
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) Name of the S3 Directory Bucket.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 bucket using `bucket`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/directoryBucket:DirectoryBucket example example--usw2-az1--x-s3
/// ```
class DirectoryBucket extends pulumi.CustomResource {
  /// ARN of the bucket.
  late final pulumi.Output<String> arn;

  /// Name of the bucket. The name must be in the format `[bucket_name]--[azid]--x-s3`. Use the `aws.s3.Bucket` resource to manage general purpose buckets.
  late final pulumi.Output<String> bucket;

  /// Data redundancy. Valid values: `SingleAvailabilityZone`, `SingleLocalZone`. The default value depends on the value of the `location.type` attribute.
  late final pulumi.Output<String> dataRedundancy;

  /// Boolean that indicates all objects should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  late final pulumi.Output<bool> forceDestroy;

  /// Bucket location. See Location below for more details.
  late final pulumi.Output<DirectoryBucketLocation> location;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Bucket type. Valid values: `Directory`.
  late final pulumi.Output<String> type;

  DirectoryBucket(
    String name, {
    DirectoryBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/directoryBucket:DirectoryBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bucket = registerOutput<String>('bucket');
    this.dataRedundancy = registerOutput<String>('dataRedundancy');
    this.forceDestroy = registerOutput<bool>('forceDestroy');
    this.location = registerOutput<DirectoryBucketLocation>('location');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
