// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RoleMembership resources.
class RoleMembershipState {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Name of the group to be added to the role.
  final pulumi.Input<String>? memberName;
  /// Name of the namespace. Defaults to `default`.
  final pulumi.Input<String>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Role to add the group to. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? role;

  /// Creates a new [RoleMembershipState].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [memberName] Name of the group to be added to the role.
  /// [namespace] Name of the namespace. Defaults to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] Role to add the group to. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  RoleMembershipState({
    this.awsAccountId,
    this.memberName,
    this.namespace,
    this.region,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'memberName': ?memberName,
      'namespace': ?namespace,
      'region': ?region,
      'role': ?role,
    };
  }

  factory RoleMembershipState.fromMap(Map<String, dynamic> map) {
    return RoleMembershipState(
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      memberName: map['memberName'] == null ? null : (map['memberName'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

