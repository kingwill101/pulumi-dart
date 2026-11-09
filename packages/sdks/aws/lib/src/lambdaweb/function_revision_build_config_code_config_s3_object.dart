// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionRevisionBuildConfigCodeConfigS3Object {
  /// Name of the Amazon S3 bucket.
  final pulumi.Input<String> bucket;
  /// Amazon S3 object key.
  final pulumi.Input<String> key;
  /// Version ID of the Amazon S3 object.
  final pulumi.Input<String?>? versionId;

  /// Creates a new [FunctionRevisionBuildConfigCodeConfigS3Object].
  /// [bucket] Name of the Amazon S3 bucket.
  /// [key] Amazon S3 object key.
  /// [versionId] Version ID of the Amazon S3 object.
  const FunctionRevisionBuildConfigCodeConfigS3Object({
    required this.bucket,
    required this.key,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'key': key,
      'versionId': ?versionId,
    };
  }

  factory FunctionRevisionBuildConfigCodeConfigS3Object.fromMap(Map<String, dynamic> map) {
    return FunctionRevisionBuildConfigCodeConfigS3Object(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
