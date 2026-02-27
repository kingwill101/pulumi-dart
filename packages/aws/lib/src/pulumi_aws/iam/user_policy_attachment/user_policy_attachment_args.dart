// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserPolicyAttachment.
class UserPolicyAttachmentArgs {
  /// The ARN of the policy you want to apply
  final pulumi.Input<String> policyArn;

  /// The user the policy should be applied to
  final pulumi.Input<String> user;

  UserPolicyAttachmentArgs({
    required this.policyArn,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyArn'] = policyArn;
    map['user'] = user;
    return map;
  }

  factory UserPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return UserPolicyAttachmentArgs(
      policyArn: pulumi.Input.asInput<String>(map['policyArn']),
      user: pulumi.Input.asInput<String>(map['user']),
    );
  }
}
