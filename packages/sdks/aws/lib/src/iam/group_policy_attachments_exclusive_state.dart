// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupPolicyAttachmentsExclusive resources.
class GroupPolicyAttachmentsExclusiveState {
  /// IAM group name.
  final pulumi.Input<String>? groupName;
  /// A list of managed IAM policy ARNs to be attached to the group. Policies attached to this group but not configured in this argument will be removed.
  final pulumi.Input<List<String>>? policyArns;

  /// Creates a new [GroupPolicyAttachmentsExclusiveState].
  /// [groupName] IAM group name.
  /// [policyArns] A list of managed IAM policy ARNs to be attached to the group. Policies attached to this group but not configured in this argument will be removed.
  GroupPolicyAttachmentsExclusiveState({
    this.groupName,
    this.policyArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'policyArns': ?policyArns,
    };
  }

  factory GroupPolicyAttachmentsExclusiveState.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAttachmentsExclusiveState(
      groupName: map['groupName'] == null ? null : ((map['groupName'] as String).input()).input(),
      policyArns: map['policyArns'] == null ? null : (((map['policyArns'] as List).cast<String>()).input()).input(),
    );
  }
}

