// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserPolicyAttachmentsExclusive.
class UserPolicyAttachmentsExclusiveArgs {
  /// A list of managed IAM policy ARNs to be attached to the user. Policies attached to this user but not configured in this argument will be removed.
  final pulumi.Input<List<String>> policyArns;

  /// IAM user name.
  final pulumi.Input<String> userName;

  UserPolicyAttachmentsExclusiveArgs({
    required this.policyArns,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyArns'] = policyArns;
    map['userName'] = userName;
    return map;
  }

  factory UserPolicyAttachmentsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return UserPolicyAttachmentsExclusiveArgs(
      policyArns: pulumi.Input.asInput<List<String>>(map['policyArns']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
