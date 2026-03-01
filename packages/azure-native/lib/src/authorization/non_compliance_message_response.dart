// ignore_for_file: unused_element, unnecessary_cast


/// A message that describes why a resource is non-compliant with the policy. This is shown in 'deny' error messages and on resource's non-compliant compliance results.
class NonComplianceMessageResponse {
  /// A message that describes why a resource is non-compliant with the policy. This is shown in 'deny' error messages and on resource's non-compliant compliance results.
  final String message;
  /// The policy definition reference ID within a policy set definition the message is intended for. This is only applicable if the policy assignment assigns a policy set definition. If this is not provided the message applies to all policies assigned by this policy assignment.
  final String? policyDefinitionReferenceId;

  /// Creates a new [NonComplianceMessageResponse].
  /// [message] A message that describes why a resource is non-compliant with the policy. This is shown in 'deny' error messages and on resource's non-compliant compliance results.
  /// [policyDefinitionReferenceId] The policy definition reference ID within a policy set definition the message is intended for. This is only applicable if the policy assignment assigns a policy set definition. If this is not provided the message applies to all policies assigned by this policy assignment.
  NonComplianceMessageResponse({
    required this.message,
    this.policyDefinitionReferenceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
    };
  }

  factory NonComplianceMessageResponse.fromMap(Map<String, dynamic> map) {
    return NonComplianceMessageResponse(
      message: map['message'] as String,
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] == null ? null : map['policyDefinitionReferenceId'] as String,
    );
  }
}

