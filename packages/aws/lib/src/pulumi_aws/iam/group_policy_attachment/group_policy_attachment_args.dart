// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GroupPolicyAttachment.
class GroupPolicyAttachmentArgs {
  /// The group the policy should be applied to
  final Input<String> group;

  /// The ARN of the policy you want to apply
  final Input<String> policyArn;

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
      group: Input.asInput<String>(map['group']),
      policyArn: Input.asInput<String>(map['policyArn']),
    );
  }
}
