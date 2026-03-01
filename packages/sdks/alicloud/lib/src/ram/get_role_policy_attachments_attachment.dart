// ignore_for_file: unused_element, unnecessary_cast


class GetRolePolicyAttachmentsAttachment {
  /// The time when the role was attached to the policy.
  final String attachDate;
  /// The policy description.
  final String description;
  /// The ID of the resource supplied above. The value is formulated as `role:<policy_name>:<policy_type>:<role_name>`.
  final String id;
  /// The name of the policy.
  final String policyName;
  /// Policy type.- Custom: Custom policy.- System: System policy.
  final String policyType;

  /// Creates a new [GetRolePolicyAttachmentsAttachment].
  /// [attachDate] The time when the role was attached to the policy.
  /// [description] The policy description.
  /// [id] The ID of the resource supplied above. The value is formulated as `role:<policy_name>:<policy_type>:<role_name>`.
  /// [policyName] The name of the policy.
  /// [policyType] Policy type.- Custom: Custom policy.- System: System policy.
  GetRolePolicyAttachmentsAttachment({
    required this.attachDate,
    required this.description,
    required this.id,
    required this.policyName,
    required this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachDate': attachDate,
      'description': description,
      'id': id,
      'policyName': policyName,
      'policyType': policyType,
    };
  }

  factory GetRolePolicyAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetRolePolicyAttachmentsAttachment(
      attachDate: map['attachDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      policyName: map['policyName'] as String,
      policyType: map['policyType'] as String,
    );
  }
}

