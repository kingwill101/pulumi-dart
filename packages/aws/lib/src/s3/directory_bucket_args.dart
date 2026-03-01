// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_bucket_location.dart';

/// {@template pulumi_s3_directory_bucket_directory_bucket_args_doc}
/// The set of arguments for DirectoryBucket.
/// {@endtemplate}
/// {@macro pulumi_s3_directory_bucket_directory_bucket_args_doc}
class DirectoryBucketArgs {
  /// Name of the bucket. The name must be in the format `[bucket_name]--[azid]--x-s3`. Use the `aws.s3.Bucket` resource to manage general purpose buckets.
  final pulumi.Input<String> bucket;

  /// Data redundancy. Valid values: `SingleAvailabilityZone`, `SingleLocalZone`. The default value depends on the value of the `location.type` attribute.
  final pulumi.Input<String>? dataRedundancy;

  /// Boolean that indicates all objects should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final pulumi.Input<bool>? forceDestroy;

  /// Bucket location. See Location below for more details.
  final pulumi.Input<DirectoryBucketLocation> location;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Bucket type. Valid values: `Directory`.
  final pulumi.Input<String>? type;

  /// Creates a new [DirectoryBucketArgs].
  /// [bucket] Name of the bucket. The name must be in the format `[bucket_name]--[azid]--x-s3`. Use the `aws.s3.Bucket` resource to manage general purpose buckets.
  /// [dataRedundancy] Data redundancy. Valid values: `SingleAvailabilityZone`, `SingleLocalZone`. The default value depends on the value of the `location.type` attribute.
  /// [forceDestroy] Boolean that indicates all objects should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  /// [location] Bucket location. See Location below for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Bucket type. Valid values: `Directory`.
  DirectoryBucketArgs({
    required String bucket,
    String? dataRedundancy,
    bool? forceDestroy,
    required DirectoryBucketLocation location,
    String? region,
    Map<String, String>? tags,
    String? type,
  }) : bucket = pulumi.Input.asInput<String>(bucket),
       dataRedundancy = pulumi.Input.asOptionalInput<String>(dataRedundancy),
       forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
       location = pulumi.Input.asInput<DirectoryBucketLocation>(location),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'dataRedundancy': ?dataRedundancy,
      'forceDestroy': ?forceDestroy,
      'location':
          pulumi.Input.mapInputValue<
            DirectoryBucketLocation,
            Map<String, dynamic>
          >(location, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory DirectoryBucketArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryBucketArgs(
      bucket: map['bucket'] as String,
      dataRedundancy: map['dataRedundancy'] == null
          ? null
          : map['dataRedundancy'] as String,
      forceDestroy: map['forceDestroy'] == null
          ? null
          : map['forceDestroy'] as bool,
      location: DirectoryBucketLocation.fromMap(
        (map['location'] as Map).cast<String, dynamic>(),
      ),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
