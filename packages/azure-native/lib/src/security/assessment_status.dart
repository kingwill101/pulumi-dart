// ignore_for_file: unused_element, unnecessary_cast


/// The result of the assessment
class AssessmentStatus {
  /// Programmatic code for the cause of the assessment status
  final String? cause;
  /// Programmatic code for the status of the assessment
  final String code;
  /// Human readable description of the assessment status
  final String? description;

  /// Creates a new [AssessmentStatus].
  /// [cause] Programmatic code for the cause of the assessment status
  /// [code] Programmatic code for the status of the assessment
  /// [description] Human readable description of the assessment status
  AssessmentStatus({
    this.cause,
    required this.code,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cause': ?cause,
      'code': code,
      'description': ?description,
    };
  }

  factory AssessmentStatus.fromMap(Map<String, dynamic> map) {
    return AssessmentStatus(
      cause: map['cause'] == null ? null : map['cause'] as String,
      code: map['code'] as String,
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}

