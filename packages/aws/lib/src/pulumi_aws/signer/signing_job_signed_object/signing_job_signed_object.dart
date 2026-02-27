// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../signing_job_signed_object_s3/signing_job_signed_object_s3.dart';

class SigningJobSignedObject {
  final List<SigningJobSignedObjectS3>? s3s;

  SigningJobSignedObject({
    this.s3s,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3sValue = s3s;
    if (s3sValue != null) {
      map['s3s'] = pulumi.Input.encodeList<SigningJobSignedObjectS3,
          Map<String, dynamic>>(s3sValue, (value) => value.toMap());
    }
    return map;
  }

  factory SigningJobSignedObject.fromMap(Map<String, dynamic> map) {
    return SigningJobSignedObject(
      s3s: map['s3s'] == null
          ? null
          : pulumi.Input.decodeList<SigningJobSignedObjectS3>(
              map['s3s'],
              (value) => SigningJobSignedObjectS3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
