// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GroupPolicyAttachmentsExclusive.
class GroupPolicyAttachmentsExclusiveArgs {
  /// IAM group name.
  final Input<String> groupName;

  /// A list of managed IAM policy ARNs to be attached to the group. Policies attached to this group but not configured in this argument will be removed.
  final Input<List<String>> policyArns;

  GroupPolicyAttachmentsExclusiveArgs({
    required this.groupName,
    required this.policyArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupName'] = groupName;
    map['policyArns'] = policyArns;
    return map;
  }

  factory GroupPolicyAttachmentsExclusiveArgs.fromMap(
      Map<String, dynamic> map) {
    return GroupPolicyAttachmentsExclusiveArgs(
      groupName: Input.asInput<String>(map['groupName']),
      policyArns: Input.asInput<List<String>>(map['policyArns']),
    );
  }
}
