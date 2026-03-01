// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_role_membership_role_membership_args_doc}
/// The set of arguments for RoleMembership.
/// {@endtemplate}
/// {@macro pulumi_quicksight_role_membership_role_membership_args_doc}
class RoleMembershipArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// Name of the group to be added to the role.
  final pulumi.Input<String> memberName;

  /// Name of the namespace. Defaults to `default`.
  final pulumi.Input<String>? namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

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
  RoleMembershipArgs({
    String? awsAccountId,
    required String memberName,
    String? namespace,
    String? region,
    required String role,
  }) : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
       memberName = pulumi.Input.asInput<String>(memberName),
       namespace = pulumi.Input.asOptionalInput<String>(namespace),
       region = pulumi.Input.asOptionalInput<String>(region),
       role = pulumi.Input.asInput<String>(role);

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
      awsAccountId: map['awsAccountId'] == null
          ? null
          : map['awsAccountId'] as String,
      memberName: map['memberName'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      role: map['role'] as String,
    );
  }
}
