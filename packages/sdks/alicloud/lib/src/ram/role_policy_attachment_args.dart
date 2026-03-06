// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_role_policy_attachment_role_policy_attachment_args_doc}
/// The set of arguments for RolePolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_ram_role_policy_attachment_role_policy_attachment_args_doc}
class RolePolicyAttachmentArgs {
  /// The name of the policy.
  final pulumi.Input<String> policyName;
  /// Policy type.
  /// - Custom: Custom policy.
  /// - System: System policy.
  final pulumi.Input<String> policyType;
  /// The RAM role name.
  final pulumi.Input<String> roleName;

  /// Creates a new [RolePolicyAttachmentArgs].
  /// [policyName] The name of the policy.
  /// [policyType] Policy type.
  /// [roleName] The RAM role name.
  const RolePolicyAttachmentArgs({
    required this.policyName,
    required this.policyType,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'policyType': policyType,
      'roleName': roleName,
    };
  }

  factory RolePolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return RolePolicyAttachmentArgs(
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}

