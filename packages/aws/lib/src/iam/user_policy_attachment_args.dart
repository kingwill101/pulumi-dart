// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_user_policy_attachment_user_policy_attachment_args_doc}
/// The set of arguments for UserPolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_iam_user_policy_attachment_user_policy_attachment_args_doc}
class UserPolicyAttachmentArgs {
  /// The ARN of the policy you want to apply
  final pulumi.Input<String> policyArn;

  /// The user the policy should be applied to
  final pulumi.Input<String> user;

  /// Creates a new [UserPolicyAttachmentArgs].
  /// [policyArn] The ARN of the policy you want to apply
  /// [user] The user the policy should be applied to
  UserPolicyAttachmentArgs({
    required String policyArn,
    required String user,
  })  : policyArn = pulumi.Input.asInput<String>(policyArn),
        user = pulumi.Input.asInput<String>(user);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyArn'] = policyArn;
    map['user'] = user;
    return map;
  }

  factory UserPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return UserPolicyAttachmentArgs(
      policyArn: map['policyArn'] as String,
      user: map['user'] as String,
    );
  }
}
