// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signing_job_signed_object_s3.dart';

class SigningJobSignedObject {
  final pulumi.Input<List<SigningJobSignedObjectS3>>? s3s;

  /// Creates a new [SigningJobSignedObject].
  /// [s3s] Optional.
  SigningJobSignedObject({
    this.s3s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3s': ?pulumi.Input.mapOptionalInputValue<List<SigningJobSignedObjectS3>, List<Map<String, dynamic>>>(s3s, (value) => pulumi.Input.encodeList<SigningJobSignedObjectS3, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SigningJobSignedObject.fromMap(Map<String, dynamic> map) {
    return SigningJobSignedObject(
      s3s: (() { final guardedValue = map['s3s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SigningJobSignedObjectS3>(guardedValue, (value) => SigningJobSignedObjectS3.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

