// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationAdminAccount.
class OrganizationAdminAccountSecurityhubArgs {
  /// The AWS account identifier of the account to designate as the Security Hub administrator account.
  final pulumi.Input<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  OrganizationAdminAccountSecurityhubArgs({
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

  factory OrganizationAdminAccountSecurityhubArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationAdminAccountSecurityhubArgs(
      adminAccountId: pulumi.Input.asInput<String>(map['adminAccountId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
