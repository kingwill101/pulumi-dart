// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationAdminAccount.
class OrganizationAdminAccountArgs {
  /// AWS account identifier to designate as a delegated administrator for Detective.
  final pulumi.Input<String> accountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  OrganizationAdminAccountArgs({
    required this.accountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory OrganizationAdminAccountArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationAdminAccountArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
