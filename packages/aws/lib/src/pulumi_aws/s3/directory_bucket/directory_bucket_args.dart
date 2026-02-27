// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../directory_bucket_location/directory_bucket_location.dart';

/// The set of arguments for DirectoryBucket.
class DirectoryBucketArgs {
  /// Name of the bucket. The name must be in the format `[bucket_name]--[azid]--x-s3`. Use the `aws.s3.Bucket` resource to manage general purpose buckets.
  final Input<String> bucket;

  /// Data redundancy. Valid values: `SingleAvailabilityZone`, `SingleLocalZone`. The default value depends on the value of the `location.type` attribute.
  final Input<String>? dataRedundancy;

  /// Boolean that indicates all objects should be deleted from the bucket *when the bucket is destroyed* so that the bucket can be destroyed without error. These objects are *not* recoverable. This only deletes objects when the bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the bucket or destroying the bucket, this flag will not work. Additionally when importing a bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final Input<bool>? forceDestroy;

  /// Bucket location. See Location below for more details.
  final Input<DirectoryBucketLocation> location;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the bucket. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Bucket type. Valid values: `Directory`.
  final Input<String>? type;

  DirectoryBucketArgs({
    required this.bucket,
    this.dataRedundancy,
    this.forceDestroy,
    required this.location,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final dataRedundancyValue = dataRedundancy;
    if (dataRedundancyValue != null) {
      map['dataRedundancy'] = dataRedundancyValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    map['location'] =
        Input.mapInputValue<DirectoryBucketLocation, Map<String, dynamic>>(
            location, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory DirectoryBucketArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryBucketArgs(
      bucket: Input.asInput<String>(map['bucket']),
      dataRedundancy: Input.asOptionalInput<String>(map['dataRedundancy']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      location: Input.asInput<DirectoryBucketLocation>(map['location']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
