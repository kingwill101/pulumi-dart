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
  const UserPolicyAttachmentsExclusiveState({
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
      policyArns: (() { final guardedValue = map['policyArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

