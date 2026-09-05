// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_role_membership_role_membership_args_doc}
/// The set of arguments for RoleMembership.
/// {@endtemplate}
/// {@macro pulumi_quicksight_role_membership_role_membership_args_doc}
class RoleMembershipArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String?>? awsAccountId;
  /// Name of the group to be added to the role.
  final pulumi.Input<String> memberName;
  /// Name of the namespace. Defaults to `default`.
  final pulumi.Input<String?>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Role to add the group to. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> role;

  /// Creates a new [RoleMembershipArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [memberName] Name of the group to be added to the role.
  /// [namespace] Name of the namespace. Defaults to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] Role to add the group to. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  const RoleMembershipArgs({
    this.awsAccountId,
    required this.memberName,
    this.namespace,
    this.region,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'memberName': memberName,
      'namespace': ?namespace,
      'region': ?region,
      'role': role,
    };
  }

  factory RoleMembershipArgs.fromMap(Map<String, dynamic> map) {
    return RoleMembershipArgs(
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberName: pulumi.Input.fromValue(map['memberName'] as String),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
