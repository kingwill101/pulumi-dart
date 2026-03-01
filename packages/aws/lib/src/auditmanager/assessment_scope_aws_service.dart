// ignore_for_file: unused_element, unnecessary_cast


class AssessmentScopeAwsService {
  /// Name of the Amazon Web Service.
  final String serviceName;

  /// Creates a new [AssessmentScopeAwsService].
  /// [serviceName] Name of the Amazon Web Service.
  AssessmentScopeAwsService({
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': serviceName,
    };
  }

  factory AssessmentScopeAwsService.fromMap(Map<String, dynamic> map) {
    return AssessmentScopeAwsService(
      serviceName: map['serviceName'] as String,
    );
  }
}

