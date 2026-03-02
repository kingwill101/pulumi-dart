// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserPolicyAttachment resources.
class UserPolicyAttachmentState {
  /// The ARN of the policy you want to apply
  final pulumi.Input<String>? policyArn;
  /// The user the policy should be applied to
  final pulumi.Input<String>? user;

  /// Creates a new [UserPolicyAttachmentState].
  /// [policyArn] The ARN of the policy you want to apply
  /// [user] The user the policy should be applied to
  UserPolicyAttachmentState({
    this.policyArn,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyArn': ?policyArn,
      'user': ?user,
    };
  }

  factory UserPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return UserPolicyAttachmentState(
      policyArn: map['policyArn'] == null ? null : (map['policyArn'] as String).input(),
      user: map['user'] == null ? null : (map['user'] as String).input(),
    );
  }
}

