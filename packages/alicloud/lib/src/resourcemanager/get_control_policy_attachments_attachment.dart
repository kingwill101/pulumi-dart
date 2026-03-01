// ignore_for_file: unused_element, unnecessary_cast


class GetControlPolicyAttachmentsAttachment {
  /// The attach date.
  final String attachDate;
  /// The description of policy.
  final String description;
  /// The ID of the Control Policy Attachment.
  final String id;
  /// The ID of policy.
  final String policyId;
  /// The name of policy.
  final String policyName;
  /// The type of policy.
  final String policyType;

  /// Creates a new [GetControlPolicyAttachmentsAttachment].
  /// [attachDate] The attach date.
  /// [description] The description of policy.
  /// [id] The ID of the Control Policy Attachment.
  /// [policyId] The ID of policy.
  /// [policyName] The name of policy.
  /// [policyType] The type of policy.
  GetControlPolicyAttachmentsAttachment({
    required this.attachDate,
    required this.description,
    required this.id,
    required this.policyId,
    required this.policyName,
    required this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachDate': attachDate,
      'description': description,
      'id': id,
      'policyId': policyId,
      'policyName': policyName,
      'policyType': policyType,
    };
  }

  factory GetControlPolicyAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetControlPolicyAttachmentsAttachment(
      attachDate: map['attachDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      policyId: map['policyId'] as String,
      policyName: map['policyName'] as String,
      policyType: map['policyType'] as String,
    );
  }
}

