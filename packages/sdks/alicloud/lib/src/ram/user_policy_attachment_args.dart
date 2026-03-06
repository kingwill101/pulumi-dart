// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_user_policy_attachment_user_policy_attachment_args_doc}
/// The set of arguments for UserPolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_ram_user_policy_attachment_user_policy_attachment_args_doc}
class UserPolicyAttachmentArgs {
  /// The name of the policy.
  final pulumi.Input<String> policyName;
  /// Permission policy type.
  /// - Custom: Custom policy.
  /// - System: System policy.
  final pulumi.Input<String> policyType;
  /// The name of the RAM user.
  final pulumi.Input<String> userName;

  /// Creates a new [UserPolicyAttachmentArgs].
  /// [policyName] The name of the policy.
  /// [policyType] Permission policy type.
  /// [userName] The name of the RAM user.
  const UserPolicyAttachmentArgs({
    required this.policyName,
    required this.policyType,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'policyType': policyType,
      'userName': userName,
    };
  }

  factory UserPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return UserPolicyAttachmentArgs(
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

