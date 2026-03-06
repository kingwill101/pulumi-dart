// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSigningJobSignedObjectS3 {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> key;

  /// Creates a new [GetSigningJobSignedObjectS3].
  /// [bucket] Required.
  /// [key] Required.
  const GetSigningJobSignedObjectS3({
    required this.bucket,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'key': key,
    };
  }

  factory GetSigningJobSignedObjectS3.fromMap(Map<String, dynamic> map) {
    return GetSigningJobSignedObjectS3(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

