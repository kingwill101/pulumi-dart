// ignore_for_file: unused_element, unnecessary_cast


/// Data model of Assessment Scope Parameters.
class AssessmentScopeParametersResponse {
  /// Gets or sets the server group id.
  final String? serverGroupId;

  /// Creates a new [AssessmentScopeParametersResponse].
  /// [serverGroupId] Gets or sets the server group id.
  AssessmentScopeParametersResponse({
    this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupId': ?serverGroupId,
    };
  }

  factory AssessmentScopeParametersResponse.fromMap(Map<String, dynamic> map) {
    return AssessmentScopeParametersResponse(
      serverGroupId: map['serverGroupId'] == null ? null : map['serverGroupId'] as String,
    );
  }
}

