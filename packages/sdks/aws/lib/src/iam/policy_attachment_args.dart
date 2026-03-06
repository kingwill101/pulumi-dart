// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_policy_attachment_policy_attachment_args_doc}
/// The set of arguments for PolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_iam_policy_attachment_policy_attachment_args_doc}
class PolicyAttachmentArgs {
  /// Group(s) the policy should be applied to.
  final pulumi.Input<List<String>>? groups;
  /// Name of the attachment. This cannot be an empty string.
  final pulumi.Input<String>? name;
  /// ARN of the policy you want to apply. Typically this should be a reference to the ARN of another resource to ensure dependency ordering, such as `aws_iam_policy.example.arn`.
  final pulumi.Input<String> policyArn;
  /// Role(s) the policy should be applied to.
  final pulumi.Input<List<String>>? roles;
  /// User(s) the policy should be applied to.
  final pulumi.Input<List<String>>? users;

  /// Creates a new [PolicyAttachmentArgs].
  /// [groups] Group(s) the policy should be applied to.
  /// [name] Name of the attachment. This cannot be an empty string.
  /// [policyArn] ARN of the policy you want to apply. Typically this should be a reference to the ARN of another resource to ensure dependency ordering, such as `aws_iam_policy.example.arn`.
  /// [roles] Role(s) the policy should be applied to.
  /// [users] User(s) the policy should be applied to.
  const PolicyAttachmentArgs({
    this.groups,
    this.name,
    required this.policyArn,
    this.roles,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': ?groups,
      'name': ?name,
      'policyArn': policyArn,
      'roles': ?roles,
      'users': ?users,
    };
  }

  factory PolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentArgs(
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyArn: pulumi.Input.fromValue(map['policyArn'] as String),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

