// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_signing_job_signed_object_s3/get_signing_job_signed_object_s3.dart';

class GetSigningJobSignedObject {
  final List<GetSigningJobSignedObjectS3> s3s;

  GetSigningJobSignedObject({
    required this.s3s,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3s'] = pulumi.Input.encodeList<GetSigningJobSignedObjectS3,
        Map<String, dynamic>>(s3s, (value) => value.toMap());
    return map;
  }

  factory GetSigningJobSignedObject.fromMap(Map<String, dynamic> map) {
    return GetSigningJobSignedObject(
      s3s: pulumi.Input.decodeList<GetSigningJobSignedObjectS3>(
          map['s3s'],
          (value) => GetSigningJobSignedObjectS3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
