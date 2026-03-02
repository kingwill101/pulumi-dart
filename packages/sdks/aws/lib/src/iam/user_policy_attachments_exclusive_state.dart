// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserPolicyAttachmentsExclusive resources.
class UserPolicyAttachmentsExclusiveState {
  /// A list of managed IAM policy ARNs to be attached to the user. Policies attached to this user but not configured in this argument will be removed.
  final pulumi.Input<List<String>>? policyArns;
  /// IAM user name.
  final pulumi.Input<String>? userName;

  /// Creates a new [UserPolicyAttachmentsExclusiveState].
  /// [policyArns] A list of managed IAM policy ARNs to be attached to the user. Policies attached to this user but not configured in this argument will be removed.
  /// [userName] IAM user name.
  UserPolicyAttachmentsExclusiveState({
    this.policyArns,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyArns': ?policyArns,
      'userName': ?userName,
    };
  }

  factory UserPolicyAttachmentsExclusiveState.fromMap(Map<String, dynamic> map) {
    return UserPolicyAttachmentsExclusiveState(
      policyArns: map['policyArns'] == null ? null : ((map['policyArns'] as List).cast<String>()).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

