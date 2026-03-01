// ignore_for_file: unused_element, unnecessary_cast


class GetPolicyAttachmentsAttachment {
  /// The time when the policy was attached.
  final String attachDate;
  /// The description of the policy.
  final String description;
  /// The ID of the Resource Manager Policy Attachment.
  final String id;
  /// The name of the policy. The name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  final String policyName;
  /// The type of the policy. Valid values: `Custom` and `System`.
  final String policyType;
  /// The name of the object to which the policy is attached.
  final String principalName;
  /// The type of the object to which the policy is attached. If you do not specify this parameter, the system lists all types of objects. Valid values: `IMSUser`: RAM user, `IMSGroup`: RAM user group, `ServiceRole`: RAM role.
  final String principalType;
  /// The ID of the resource group or the ID of the Alibaba Cloud account to which the resource group belongs. If you do not specify this parameter, the system lists all policy attachment records under the current account.
  final String resourceGroupId;

  /// Creates a new [GetPolicyAttachmentsAttachment].
  /// [attachDate] The time when the policy was attached.
  /// [description] The description of the policy.
  /// [id] The ID of the Resource Manager Policy Attachment.
  /// [policyName] The name of the policy. The name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  /// [policyType] The type of the policy. Valid values: `Custom` and `System`.
  /// [principalName] The name of the object to which the policy is attached.
  /// [principalType] The type of the object to which the policy is attached. If you do not specify this parameter, the system lists all types of objects. Valid values: `IMSUser`: RAM user, `IMSGroup`: RAM user group, `ServiceRole`: RAM role.
  /// [resourceGroupId] The ID of the resource group or the ID of the Alibaba Cloud account to which the resource group belongs. If you do not specify this parameter, the system lists all policy attachment records under the current account.
  GetPolicyAttachmentsAttachment({
    required this.attachDate,
    required this.description,
    required this.id,
    required this.policyName,
    required this.policyType,
    required this.principalName,
    required this.principalType,
    required this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachDate': attachDate,
      'description': description,
      'id': id,
      'policyName': policyName,
      'policyType': policyType,
      'principalName': principalName,
      'principalType': principalType,
      'resourceGroupId': resourceGroupId,
    };
  }

  factory GetPolicyAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetPolicyAttachmentsAttachment(
      attachDate: map['attachDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      policyName: map['policyName'] as String,
      policyType: map['policyType'] as String,
      principalName: map['principalName'] as String,
      principalType: map['principalType'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
    );
  }
}

