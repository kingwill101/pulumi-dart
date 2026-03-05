// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_signing_job_signed_object_s3.dart';

class GetSigningJobSignedObject {
  final pulumi.Input<List<GetSigningJobSignedObjectS3>> s3s;

  /// Creates a new [GetSigningJobSignedObject].
  /// [s3s] Required.
  GetSigningJobSignedObject({
    required this.s3s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3s': pulumi.Input.mapInputValue<List<GetSigningJobSignedObjectS3>, List<Map<String, dynamic>>>(s3s, (value) => pulumi.Input.encodeList<GetSigningJobSignedObjectS3, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSigningJobSignedObject.fromMap(Map<String, dynamic> map) {
    return GetSigningJobSignedObject(
      s3s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSigningJobSignedObjectS3>(map['s3s']!, (value) => GetSigningJobSignedObjectS3.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

