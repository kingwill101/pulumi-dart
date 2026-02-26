// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationAdminAccountRegistration.
class OrganizationAdminAccountRegistrationArgs {
  /// Identifier for the organization administrator account.
  final Input<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  OrganizationAdminAccountRegistrationArgs({
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

  factory OrganizationAdminAccountRegistrationArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationAdminAccountRegistrationArgs(
      adminAccountId: Input.asInput<String>(map['adminAccountId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
