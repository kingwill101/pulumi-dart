// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationAdminAccount.
class OrganizationAdminAccountArgs2 {
  /// AWS account identifier to designate as a delegated administrator for GuardDuty.
  final Input<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  OrganizationAdminAccountArgs2({
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

  factory OrganizationAdminAccountArgs2.fromMap(Map<String, dynamic> map) {
    return OrganizationAdminAccountArgs2(
      adminAccountId: Input.asInput<String>(map['adminAccountId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
