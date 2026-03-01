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
  RolePolicyAttachmentArgs({
    required pulumi.Output<String> policyName,
    required pulumi.Output<String> policyType,
    required pulumi.Output<String> roleName,
  }) :
      policyName = pulumi.Input.asInput<String>(policyName),
      policyType = pulumi.Input.asInput<String>(policyType),
      roleName = pulumi.Input.asInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'policyType': policyType,
      'roleName': roleName,
    };
  }

  factory RolePolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return RolePolicyAttachmentArgs(
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      policyType: pulumi.Output.create<String>(map['policyType'] as String),
      roleName: pulumi.Output.create<String>(map['roleName'] as String),
    );
  }
}

