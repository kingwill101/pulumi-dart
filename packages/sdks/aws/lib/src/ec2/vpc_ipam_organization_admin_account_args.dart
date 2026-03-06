// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_ipam_organization_admin_account_vpc_ipam_organization_admin_account_args_doc}
/// The set of arguments for VpcIpamOrganizationAdminAccount.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_ipam_organization_admin_account_vpc_ipam_organization_admin_account_args_doc}
class VpcIpamOrganizationAdminAccountArgs {
  final pulumi.Input<String> delegatedAdminAccountId;

  /// Creates a new [VpcIpamOrganizationAdminAccountArgs].
  /// [delegatedAdminAccountId] Required.
  const VpcIpamOrganizationAdminAccountArgs({
    required this.delegatedAdminAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedAdminAccountId': delegatedAdminAccountId,
    };
  }

  factory VpcIpamOrganizationAdminAccountArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpamOrganizationAdminAccountArgs(
      delegatedAdminAccountId: pulumi.Input.fromValue(map['delegatedAdminAccountId'] as String),
    );
  }
}

