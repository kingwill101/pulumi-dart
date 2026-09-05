// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SigningJobSignedObjectS3 {
  final pulumi.Input<String?>? bucket;
  /// Key name of the object that contains your unsigned code.
  final pulumi.Input<String?>? key;

  /// Creates a new [SigningJobSignedObjectS3].
  /// [bucket] Optional.
  /// [key] Key name of the object that contains your unsigned code.
  const SigningJobSignedObjectS3({
    this.bucket,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'key': ?key,
    };
  }

  factory SigningJobSignedObjectS3.fromMap(Map<String, dynamic> map) {
    return SigningJobSignedObjectS3(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
