// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_signing_job_source_s3/get_signing_job_source_s3.dart';

class GetSigningJobSource {
  final List<GetSigningJobSourceS3> s3s;

  GetSigningJobSource({
    required this.s3s,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3s'] =
        pulumi.Input.encodeList<GetSigningJobSourceS3, Map<String, dynamic>>(
            s3s, (value) => value.toMap());
    return map;
  }

  factory GetSigningJobSource.fromMap(Map<String, dynamic> map) {
    return GetSigningJobSource(
      s3s: pulumi.Input.decodeList<GetSigningJobSourceS3>(
          map['s3s'],
          (value) => GetSigningJobSourceS3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
