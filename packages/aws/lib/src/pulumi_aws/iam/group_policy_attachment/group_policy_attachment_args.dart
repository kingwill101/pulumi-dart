// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GroupPolicyAttachment.
class GroupPolicyAttachmentArgs {
  /// The group the policy should be applied to
  final pulumi.Input<String> group;

  /// The ARN of the policy you want to apply
  final pulumi.Input<String> policyArn;

  GroupPolicyAttachmentArgs({
    required this.group,
    required this.policyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group;
    map['policyArn'] = policyArn;
    return map;
  }

  factory GroupPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAttachmentArgs(
      group: pulumi.Input.asInput<String>(map['group']),
      policyArn: pulumi.Input.asInput<String>(map['policyArn']),
    );
  }
}
