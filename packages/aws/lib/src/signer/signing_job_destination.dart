// ignore_for_file: unused_element, unnecessary_cast

import 'signing_job_destination_s3.dart';

class SigningJobDestination {
  /// A configuration block describing the S3 Destination object: See S3 Destination below for details.
  final SigningJobDestinationS3 s3;

  /// Creates a new [SigningJobDestination].
  /// [s3] A configuration block describing the S3 Destination object: See S3 Destination below for details.
  SigningJobDestination({required this.s3});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'s3': s3.toMap()};
  }

  factory SigningJobDestination.fromMap(Map<String, dynamic> map) {
    return SigningJobDestination(
      s3: SigningJobDestinationS3.fromMap(
        (map['s3'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
