// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSigningJobSourceS3 {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> key;
  final pulumi.Input<String> version;

  /// Creates a new [GetSigningJobSourceS3].
  /// [bucket] Required.
  /// [key] Required.
  /// [version] Required.
  GetSigningJobSourceS3({
    required this.bucket,
    required this.key,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'key': key,
      'version': version,
    };
  }

  factory GetSigningJobSourceS3.fromMap(Map<String, dynamic> map) {
    return GetSigningJobSourceS3(
      bucket: (map['bucket'] as String).input(),
      key: (map['key'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

