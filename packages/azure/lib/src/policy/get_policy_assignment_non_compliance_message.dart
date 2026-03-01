// ignore_for_file: unused_element, unnecessary_cast


class GetPolicyAssignmentNonComplianceMessage {
  /// The non-compliance message text.
  final String content;
  /// The ID of the Policy Definition that the non-compliance message applies to.
  final String policyDefinitionReferenceId;

  /// Creates a new [GetPolicyAssignmentNonComplianceMessage].
  /// [content] The non-compliance message text.
  /// [policyDefinitionReferenceId] The ID of the Policy Definition that the non-compliance message applies to.
  GetPolicyAssignmentNonComplianceMessage({
    required this.content,
    required this.policyDefinitionReferenceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'policyDefinitionReferenceId': policyDefinitionReferenceId,
    };
  }

  factory GetPolicyAssignmentNonComplianceMessage.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentNonComplianceMessage(
      content: map['content'] as String,
      policyDefinitionReferenceId: map['policyDefinitionReferenceId'] as String,
    );
  }
}

