// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RolePolicyAttachment.
class RolePolicyAttachmentArgs {
  /// The ARN of the policy you want to apply
  final Input<String> policyArn;

  /// The name of the IAM role to which the policy should be applied
  final Input<String> role;

  RolePolicyAttachmentArgs({
    required this.policyArn,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyArn'] = policyArn;
    map['role'] = role;
    return map;
  }

  factory RolePolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return RolePolicyAttachmentArgs(
      policyArn: Input.asInput<String>(map['policyArn']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
