// ignore_for_file: unused_element, unnecessary_cast


class GetControlPoliciesPolicy {
  /// The count of policy attachment.
  final int attachmentCount;
  /// The name of policy.
  final String controlPolicyName;
  /// The description of policy.
  final String description;
  /// The effect scope.
  final String effectScope;
  /// The ID of the Control Policy.
  final String id;
  /// The policy document.
  final String policyDocument;
  /// The ID of policy.
  final String policyId;
  /// The type of policy.
  final String policyType;

  /// Creates a new [GetControlPoliciesPolicy].
  /// [attachmentCount] The count of policy attachment.
  /// [controlPolicyName] The name of policy.
  /// [description] The description of policy.
  /// [effectScope] The effect scope.
  /// [id] The ID of the Control Policy.
  /// [policyDocument] The policy document.
  /// [policyId] The ID of policy.
  /// [policyType] The type of policy.
  GetControlPoliciesPolicy({
    required this.attachmentCount,
    required this.controlPolicyName,
    required this.description,
    required this.effectScope,
    required this.id,
    required this.policyDocument,
    required this.policyId,
    required this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentCount': attachmentCount,
      'controlPolicyName': controlPolicyName,
      'description': description,
      'effectScope': effectScope,
      'id': id,
      'policyDocument': policyDocument,
      'policyId': policyId,
      'policyType': policyType,
    };
  }

  factory GetControlPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetControlPoliciesPolicy(
      attachmentCount: map['attachmentCount'] as int,
      controlPolicyName: map['controlPolicyName'] as String,
      description: map['description'] as String,
      effectScope: map['effectScope'] as String,
      id: map['id'] as String,
      policyDocument: map['policyDocument'] as String,
      policyId: map['policyId'] as String,
      policyType: map['policyType'] as String,
    );
  }
}

