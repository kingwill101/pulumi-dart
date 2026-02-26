// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationAdminAccount.
class OrganizationAdminAccountArgs4 {
  /// The AWS account identifier of the account to designate as the Security Hub administrator account.
  final Input<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  OrganizationAdminAccountArgs4({
    required this.adminAccountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminAccountId'] = adminAccountId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory OrganizationAdminAccountArgs4.fromMap(Map<String, dynamic> map) {
    return OrganizationAdminAccountArgs4(
      adminAccountId: Input.asInput<String>(map['adminAccountId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
