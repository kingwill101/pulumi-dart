// ignore_for_file: unused_element, unnecessary_cast

import '../signing_job_destination_s3/signing_job_destination_s3.dart';

class SigningJobDestination {
  /// A configuration block describing the S3 Destination object: See S3 Destination below for details.
  final SigningJobDestinationS3 s3;

  SigningJobDestination({
    required this.s3,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3'] = s3.toMap();
    return map;
  }

  factory SigningJobDestination.fromMap(Map<String, dynamic> map) {
    return SigningJobDestination(
      s3: SigningJobDestinationS3.fromMap(
          (map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
