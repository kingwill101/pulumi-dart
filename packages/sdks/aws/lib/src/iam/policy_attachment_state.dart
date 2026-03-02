// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyAttachment resources.
class PolicyAttachmentState {
  /// Group(s) the policy should be applied to.
  final pulumi.Input<List<String>>? groups;
  /// Name of the attachment. This cannot be an empty string.
  final pulumi.Input<String>? name;
  /// ARN of the policy you want to apply. Typically this should be a reference to the ARN of another resource to ensure dependency ordering, such as `aws_iam_policy.example.arn`.
  final pulumi.Input<String>? policyArn;
  /// Role(s) the policy should be applied to.
  final pulumi.Input<List<String>>? roles;
  /// User(s) the policy should be applied to.
  final pulumi.Input<List<String>>? users;

  /// Creates a new [PolicyAttachmentState].
  /// [groups] Group(s) the policy should be applied to.
  /// [name] Name of the attachment. This cannot be an empty string.
  /// [policyArn] ARN of the policy you want to apply. Typically this should be a reference to the ARN of another resource to ensure dependency ordering, such as `aws_iam_policy.example.arn`.
  /// [roles] Role(s) the policy should be applied to.
  /// [users] User(s) the policy should be applied to.
  PolicyAttachmentState({
    this.groups,
    this.name,
    this.policyArn,
    this.roles,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': ?groups,
      'name': ?name,
      'policyArn': ?policyArn,
      'roles': ?roles,
      'users': ?users,
    };
  }

  factory PolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentState(
      groups: map['groups'] == null ? null : (((map['groups'] as List).cast<String>()).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      policyArn: map['policyArn'] == null ? null : ((map['policyArn'] as String).input()).input(),
      roles: map['roles'] == null ? null : (((map['roles'] as List).cast<String>()).input()).input(),
      users: map['users'] == null ? null : (((map['users'] as List).cast<String>()).input()).input(),
    );
  }
}

