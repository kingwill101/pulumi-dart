// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PolicyAttachment.
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

  PolicyAttachmentArgs({
    this.groups,
    this.name,
    required this.policyArn,
    this.roles,
    this.users,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupsValue = groups;
    if (groupsValue != null) {
      map['groups'] = groupsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policyArn'] = policyArn;
    final rolesValue = roles;
    if (rolesValue != null) {
      map['roles'] = rolesValue;
    }
    final usersValue = users;
    if (usersValue != null) {
      map['users'] = usersValue;
    }
    return map;
  }

  factory PolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentArgs(
      groups: pulumi.Input.asOptionalInput<List<String>>(map['groups']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      policyArn: pulumi.Input.asInput<String>(map['policyArn']),
      roles: pulumi.Input.asOptionalInput<List<String>>(map['roles']),
      users: pulumi.Input.asOptionalInput<List<String>>(map['users']),
    );
  }
}
