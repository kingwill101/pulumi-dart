// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_object_get_object_args_doc}
/// Arguments for getObject.
/// {@endtemplate}
/// {@macro pulumi_s3_get_object_get_object_args_doc}
class GetObjectArgs {
  /// Name of the bucket to read the object from. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified
  final pulumi.Input<String> bucket;
  /// To retrieve the object's checksum, this argument must be `ENABLED`. If you enable `checksum_mode` and the object is encrypted with KMS, you must have permission to use the `kms:Decrypt` action. Valid values: `ENABLED`
  final pulumi.Input<String>? checksumMode;
  /// Set to `true` to always download object data to `body_base64` attribute. If unset and conditions described above are met, `body` will be available but `body_base64` will not be. If set to `false`, the body is not downloaded and neither `body` nor `body_base64` is available, which may improve performance.
  final pulumi.Input<String>? downloadBody;
  /// Full path to the object inside the bucket
  final pulumi.Input<String> key;
  final pulumi.Input<String>? range;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the object.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specific version ID of the object returned (defaults to latest version)
  final pulumi.Input<String>? versionId;

  /// Creates a new [GetObjectArgs].
  /// [bucket] Name of the bucket to read the object from. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified
  /// [checksumMode] To retrieve the object's checksum, this argument must be `ENABLED`. If you enable `checksum_mode` and the object is encrypted with KMS, you must have permission to use the `kms:Decrypt` action. Valid values: `ENABLED`
  /// [downloadBody] Set to `true` to always download object data to `body_base64` attribute. If unset and conditions described above are met, `body` will be available but `body_base64` will not be. If set to `false`, the body is not downloaded and neither `body` nor `body_base64` is available, which may improve performance.
  /// [key] Full path to the object inside the bucket
  /// [range] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the object.
  /// [versionId] Specific version ID of the object returned (defaults to latest version)
  GetObjectArgs({
    required pulumi.Output<String> bucket,
    pulumi.Output<String>? checksumMode,
    pulumi.Output<String>? downloadBody,
    required pulumi.Output<String> key,
    pulumi.Output<String>? range,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? versionId,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      checksumMode = pulumi.Input.asOptionalInput<String>(checksumMode),
      downloadBody = pulumi.Input.asOptionalInput<String>(downloadBody),
      key = pulumi.Input.asInput<String>(key),
      range = pulumi.Input.asOptionalInput<String>(range),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      versionId = pulumi.Input.asOptionalInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'checksumMode': ?checksumMode,
      'downloadBody': ?downloadBody,
      'key': key,
      'range': ?range,
      'region': ?region,
      'tags': ?tags,
      'versionId': ?versionId,
    };
  }

  factory GetObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      checksumMode: map['checksumMode'] == null ? null : pulumi.Output.create<String>(map['checksumMode'] as String),
      downloadBody: map['downloadBody'] == null ? null : pulumi.Output.create<String>(map['downloadBody'] as String),
      key: pulumi.Output.create<String>(map['key'] as String),
      range: map['range'] == null ? null : pulumi.Output.create<String>(map['range'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

