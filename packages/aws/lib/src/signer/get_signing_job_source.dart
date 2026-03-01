// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_signing_job_source_s3.dart';

class GetSigningJobSource {
  final List<GetSigningJobSourceS3> s3s;

  /// Creates a new [GetSigningJobSource].
  /// [s3s] Required.
  GetSigningJobSource({required this.s3s});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3s':
          pulumi.Input.encodeList<GetSigningJobSourceS3, Map<String, dynamic>>(
            s3s,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetSigningJobSource.fromMap(Map<String, dynamic> map) {
    return GetSigningJobSource(
      s3s: pulumi.Input.decodeList<GetSigningJobSourceS3>(
        map['s3s'],
        (value) => GetSigningJobSourceS3.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
