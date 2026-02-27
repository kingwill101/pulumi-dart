// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcIpamOrganizationAdminAccount.
class VpcIpamOrganizationAdminAccountArgs {
  final pulumi.Input<String> delegatedAdminAccountId;

  VpcIpamOrganizationAdminAccountArgs({
    required this.delegatedAdminAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['delegatedAdminAccountId'] = delegatedAdminAccountId;
    return map;
  }

  factory VpcIpamOrganizationAdminAccountArgs.fromMap(
      Map<String, dynamic> map) {
    return VpcIpamOrganizationAdminAccountArgs(
      delegatedAdminAccountId:
          pulumi.Input.asInput<String>(map['delegatedAdminAccountId']),
    );
  }
}
