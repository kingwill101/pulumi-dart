// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getObject.
class GetObjectArgs {
  /// Name of the bucket to read the object from. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified
  final Input<String> bucket;

  /// To retrieve the object's checksum, this argument must be `ENABLED`. If you enable `checksum_mode` and the object is encrypted with KMS, you must have permission to use the `kms:Decrypt` action. Valid values: `ENABLED`
  final Input<String>? checksumMode;

  /// Set to `true` to always download object data to `body_base64` attribute. If unset and conditions described above are met, `body` will be available but `body_base64` will not be. If set to `false`, the body is not downloaded and neither `body` nor `body_base64` is available, which may improve performance.
  final Input<String>? downloadBody;

  /// Full path to the object inside the bucket
  final Input<String> key;
  final Input<String>? range;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the object.
  final Input<Map<String, String>>? tags;

  /// Specific version ID of the object returned (defaults to latest version)
  final Input<String>? versionId;

  GetObjectArgs({
    required this.bucket,
    this.checksumMode,
    this.downloadBody,
    required this.key,
    this.range,
    this.region,
    this.tags,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final checksumModeValue = checksumMode;
    if (checksumModeValue != null) {
      map['checksumMode'] = checksumModeValue;
    }
    final downloadBodyValue = downloadBody;
    if (downloadBodyValue != null) {
      map['downloadBody'] = downloadBodyValue;
    }
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

  factory GetObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectArgs(
      bucket: Input.asInput<String>(map['bucket']),
      checksumMode: Input.asOptionalInput<String>(map['checksumMode']),
      downloadBody: Input.asOptionalInput<String>(map['downloadBody']),
      key: Input.asInput<String>(map['key']),
      range: Input.asOptionalInput<String>(map['range']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      versionId: Input.asOptionalInput<String>(map['versionId']),
    );
  }
}
