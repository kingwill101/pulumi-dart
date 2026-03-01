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
    pulumi.Output<List<String>>? policyArns,
    pulumi.Output<String>? userName,
  }) :
      policyArns = pulumi.Input.asOptionalInput<List<String>>(policyArns),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyArns': ?policyArns,
      'userName': ?userName,
    };
  }

  factory UserPolicyAttachmentsExclusiveState.fromMap(Map<String, dynamic> map) {
    return UserPolicyAttachmentsExclusiveState(
      policyArns: map['policyArns'] == null ? null : pulumi.Output.create<List<String>>((map['policyArns'] as List).cast<String>()),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

