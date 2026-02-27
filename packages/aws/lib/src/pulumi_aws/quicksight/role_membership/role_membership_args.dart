// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RoleMembership.
class RoleMembershipArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Name of the group to be added to the role.
  final Input<String> memberName;

  /// Name of the namespace. Defaults to `default`.
  final Input<String>? namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Role to add the group to. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  final Input<String> role;

  RoleMembershipArgs({
    this.awsAccountId,
    required this.memberName,
    this.namespace,
    this.region,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['memberName'] = memberName;
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['role'] = role;
    return map;
  }

  factory RoleMembershipArgs.fromMap(Map<String, dynamic> map) {
    return RoleMembershipArgs(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      memberName: Input.asInput<String>(map['memberName']),
      namespace: Input.asOptionalInput<String>(map['namespace']),
      region: Input.asOptionalInput<String>(map['region']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
