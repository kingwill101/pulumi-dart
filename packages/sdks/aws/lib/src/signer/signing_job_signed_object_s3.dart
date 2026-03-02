// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SigningJobSignedObjectS3 {
  final pulumi.Input<String>? bucket;
  /// Key name of the object that contains your unsigned code.
  final pulumi.Input<String>? key;

  /// Creates a new [SigningJobSignedObjectS3].
  /// [bucket] Optional.
  /// [key] Key name of the object that contains your unsigned code.
  SigningJobSignedObjectS3({
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
      bucket: map['bucket'] == null ? null : ((map['bucket'] as String).input()).input(),
      key: map['key'] == null ? null : ((map['key'] as String).input()).input(),
    );
  }
}

