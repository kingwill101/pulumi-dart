// ignore_for_file: unused_element, unnecessary_cast

/// A resource that reports the errors encountered while processing an import job.
class ImportErrorResponse2 {
  /// The error information.
  final String errorDetails;

  /// The severity of the error.
  final String severity;

  ImportErrorResponse2({
    required this.errorDetails,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errorDetails'] = errorDetails;
    map['severity'] = severity;
    return map;
  }

  factory ImportErrorResponse2.fromMap(Map<String, dynamic> map) {
    return ImportErrorResponse2(
      errorDetails: map['errorDetails'] as String,
      severity: map['severity'] as String,
    );
  }
}
