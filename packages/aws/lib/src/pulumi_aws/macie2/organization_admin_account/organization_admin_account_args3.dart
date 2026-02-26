// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationAdminAccount.
class OrganizationAdminAccountArgs3 {
  /// The AWS account ID for the account to designate as the delegated Amazon Macie administrator account for the organization.
  final Input<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  OrganizationAdminAccountArgs3({
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

  factory OrganizationAdminAccountArgs3.fromMap(Map<String, dynamic> map) {
    return OrganizationAdminAccountArgs3(
      adminAccountId: Input.asInput<String>(map['adminAccountId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
