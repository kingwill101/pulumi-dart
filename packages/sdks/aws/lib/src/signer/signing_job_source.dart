// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signing_job_source_s3.dart';

class SigningJobSource {
  /// A configuration block describing the S3 Source object: See S3 Source below for details.
  final pulumi.Input<SigningJobSourceS3> s3;

  /// Creates a new [SigningJobSource].
  /// [s3] A configuration block describing the S3 Source object: See S3 Source below for details.
  SigningJobSource({
    required this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3': pulumi.Input.mapInputValue<SigningJobSourceS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory SigningJobSource.fromMap(Map<String, dynamic> map) {
    return SigningJobSource(
      s3: (SigningJobSourceS3.fromMap((map['s3'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

