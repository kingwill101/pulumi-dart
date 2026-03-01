// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_group_policy_attachment_group_policy_attachment_args_doc}
/// The set of arguments for GroupPolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_ram_group_policy_attachment_group_policy_attachment_args_doc}
class GroupPolicyAttachmentArgs {
  /// The name of the group.
  final pulumi.Input<String> groupName;
  /// The name of the policy.
  final pulumi.Input<String> policyName;
  /// Policy type.
  /// - Custom: Custom policy.
  /// - System: System policy.
  final pulumi.Input<String> policyType;

  /// Creates a new [GroupPolicyAttachmentArgs].
  /// [groupName] The name of the group.
  /// [policyName] The name of the policy.
  /// [policyType] Policy type.
  GroupPolicyAttachmentArgs({
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> policyName,
    required pulumi.Output<String> policyType,
  }) :
      groupName = pulumi.Input.asInput<String>(groupName),
      policyName = pulumi.Input.asInput<String>(policyName),
      policyType = pulumi.Input.asInput<String>(policyType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'policyName': policyName,
      'policyType': policyType,
    };
  }

  factory GroupPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAttachmentArgs(
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      policyType: pulumi.Output.create<String>(map['policyType'] as String),
    );
  }
}

