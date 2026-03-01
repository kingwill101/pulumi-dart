// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_user_policy_attachments_exclusive_user_policy_attachments_exclusive_args_doc}
/// The set of arguments for UserPolicyAttachmentsExclusive.
/// {@endtemplate}
/// {@macro pulumi_iam_user_policy_attachments_exclusive_user_policy_attachments_exclusive_args_doc}
class UserPolicyAttachmentsExclusiveArgs {
  /// A list of managed IAM policy ARNs to be attached to the user. Policies attached to this user but not configured in this argument will be removed.
  final pulumi.Input<List<String>> policyArns;
  /// IAM user name.
  final pulumi.Input<String> userName;

  /// Creates a new [UserPolicyAttachmentsExclusiveArgs].
  /// [policyArns] A list of managed IAM policy ARNs to be attached to the user. Policies attached to this user but not configured in this argument will be removed.
  /// [userName] IAM user name.
  UserPolicyAttachmentsExclusiveArgs({
    required pulumi.Output<List<String>> policyArns,
    required pulumi.Output<String> userName,
  }) :
      policyArns = pulumi.Input.asInput<List<String>>(policyArns),
      userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyArns': policyArns,
      'userName': userName,
    };
  }

  factory UserPolicyAttachmentsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return UserPolicyAttachmentsExclusiveArgs(
      policyArns: pulumi.Output.create<List<String>>((map['policyArns'] as List).cast<String>()),
      userName: pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

