// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRolePolicyAttachmentsAttachment {
  /// The time when the role was attached to the policy.
  final pulumi.Input<String> attachDate;
  /// The policy description.
  final pulumi.Input<String> description;
  /// The ID of the resource supplied above. The value is formulated as `role:<policy_name>:<policy_type>:<role_name>`.
  final pulumi.Input<String> id;
  /// The name of the policy.
  final pulumi.Input<String> policyName;
  /// Policy type.- Custom: Custom policy.- System: System policy.
  final pulumi.Input<String> policyType;

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
      attachDate: (map['attachDate'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      policyName: (map['policyName'] as String).input(),
      policyType: (map['policyType'] as String).input(),
    );
  }
}

