// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RolePolicyAttachmentsExclusive.
class RolePolicyAttachmentsExclusiveArgs {
  /// A list of managed IAM policy ARNs to be attached to the role. Policies attached to this role but not configured in this argument will be removed.
  final Input<List<String>> policyArns;

  /// IAM role name.
  final Input<String> roleName;

  RolePolicyAttachmentsExclusiveArgs({
    required this.policyArns,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyArns'] = policyArns;
    map['roleName'] = roleName;
    return map;
  }

  factory RolePolicyAttachmentsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return RolePolicyAttachmentsExclusiveArgs(
      policyArns: Input.asInput<List<String>>(map['policyArns']),
      roleName: Input.asInput<String>(map['roleName']),
    );
  }
}
