// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBucketObject.
class GetBucketObjectArgs {
  /// Name of the bucket to read the object from. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified
  final pulumi.Input<String> bucket;

  /// Full path to the object inside the bucket
  final pulumi.Input<String> key;
  final pulumi.Input<String>? range;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the object.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specific version ID of the object returned (defaults to latest version)
  final pulumi.Input<String>? versionId;

  GetBucketObjectArgs({
    required this.bucket,
    required this.key,
    this.range,
    this.region,
    this.tags,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['key'] = key;
    final rangeValue = range;
    if (rangeValue != null) {
      map['range'] = rangeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    return map;
  }

  factory GetBucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      key: pulumi.Input.asInput<String>(map['key']),
      range: pulumi.Input.asOptionalInput<String>(map['range']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      versionId: pulumi.Input.asOptionalInput<String>(map['versionId']),
    );
  }
}
