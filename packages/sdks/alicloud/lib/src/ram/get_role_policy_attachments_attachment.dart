// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRolePolicyAttachmentsAttachment {
  /// The time when the role was attached to the policy.
  final pulumi.Input<String> attachDate;

  /// The policy description.
  final pulumi.Input<String> description;

  /// The ID of the resource supplied above. The value is formulated as `role:&lt;policy_name&gt;:&lt;policy_type&gt;:&lt;role_name&gt;`.
  final pulumi.Input<String> id;

  /// The name of the policy.
  final pulumi.Input<String> policyName;

  /// Policy type.- Custom: Custom policy.- System: System policy.
  final pulumi.Input<String> policyType;

  /// Creates a new [GetRolePolicyAttachmentsAttachment].
  /// [attachDate] The time when the role was attached to the policy.
  /// [description] The policy description.
  /// [id] The ID of the resource supplied above. The value is formulated as `role:&lt;policy_name&gt;:&lt;policy_type&gt;:&lt;role_name&gt;`.
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
      attachDate: pulumi.Input.fromValue(map['attachDate'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
    );
  }
}
