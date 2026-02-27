// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationAdminAccount.
class OrganizationAdminAccountGuarddutyArgs {
  /// AWS account identifier to designate as a delegated administrator for GuardDuty.
  final pulumi.Input<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  OrganizationAdminAccountGuarddutyArgs({
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

  factory OrganizationAdminAccountGuarddutyArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationAdminAccountGuarddutyArgs(
      adminAccountId: pulumi.Input.asInput<String>(map['adminAccountId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
