// ignore_for_file: unused_element, unnecessary_cast


/// A resource that reports the errors encountered while processing an import job.
class ImportErrorResponseMigrationcenterV1alpha1 {
  /// The error information.
  final String errorDetails;
  /// The severity of the error.
  final String severity;

  /// Creates a new [ImportErrorResponseMigrationcenterV1alpha1].
  /// [errorDetails] The error information.
  /// [severity] The severity of the error.
  ImportErrorResponseMigrationcenterV1alpha1({
    required this.errorDetails,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': errorDetails,
      'severity': severity,
    };
  }

  factory ImportErrorResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ImportErrorResponseMigrationcenterV1alpha1(
      errorDetails: map['errorDetails'] as String,
      severity: map['severity'] as String,
    );
  }
}

