// ignore_for_file: unused_element, unnecessary_cast

class AssessmentAssessmentReportsDestination {
  /// Destination of the assessment report. This value be in the form `s3://{bucket_name}`.
  final String destination;

  /// Destination type. Currently, `S3` is the only valid value.
  final String destinationType;

  /// Creates a new [AssessmentAssessmentReportsDestination].
  /// [destination] Destination of the assessment report. This value be in the form `s3://{bucket_name}`.
  /// [destinationType] Destination type. Currently, `S3` is the only valid value.
  AssessmentAssessmentReportsDestination({
    required this.destination,
    required this.destinationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'destinationType': destinationType,
    };
  }

  factory AssessmentAssessmentReportsDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return AssessmentAssessmentReportsDestination(
      destination: map['destination'] as String,
      destinationType: map['destinationType'] as String,
    );
  }
}
