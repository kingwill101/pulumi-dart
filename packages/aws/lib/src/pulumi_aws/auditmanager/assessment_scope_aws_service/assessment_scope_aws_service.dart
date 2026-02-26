// ignore_for_file: unused_element, unnecessary_cast

class AssessmentScopeAwsService {
  /// Name of the Amazon Web Service.
  final String serviceName;

  AssessmentScopeAwsService({
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceName'] = serviceName;
    return map;
  }

  factory AssessmentScopeAwsService.fromMap(Map<String, dynamic> map) {
    return AssessmentScopeAwsService(
      serviceName: map['serviceName'] as String,
    );
  }
}
