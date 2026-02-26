// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcIpamOrganizationAdminAccount.
class VpcIpamOrganizationAdminAccountArgs {
  final Input<String> delegatedAdminAccountId;

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
          Input.asInput<String>(map['delegatedAdminAccountId']),
    );
  }
}
