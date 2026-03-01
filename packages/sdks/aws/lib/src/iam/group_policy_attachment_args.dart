// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_group_policy_attachment_group_policy_attachment_args_doc}
/// The set of arguments for GroupPolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_iam_group_policy_attachment_group_policy_attachment_args_doc}
class GroupPolicyAttachmentArgs {
  /// The group the policy should be applied to
  final pulumi.Input<String> group;
  /// The ARN of the policy you want to apply
  final pulumi.Input<String> policyArn;

  /// Creates a new [GroupPolicyAttachmentArgs].
  /// [group] The group the policy should be applied to
  /// [policyArn] The ARN of the policy you want to apply
  GroupPolicyAttachmentArgs({
    required pulumi.Output<String> group,
    required pulumi.Output<String> policyArn,
  }) :
      group = pulumi.Input.asInput<String>(group),
      policyArn = pulumi.Input.asInput<String>(policyArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'policyArn': policyArn,
    };
  }

  factory GroupPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAttachmentArgs(
      group: pulumi.Output.create<String>(map['group'] as String),
      policyArn: pulumi.Output.create<String>(map['policyArn'] as String),
    );
  }
}

