// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationAdminAccount.
class OrganizationAdminAccountMacie2Args {
  /// The AWS account ID for the account to designate as the delegated Amazon Macie administrator account for the organization.
  final pulumi.Input<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  OrganizationAdminAccountMacie2Args({
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

  factory OrganizationAdminAccountMacie2Args.fromMap(Map<String, dynamic> map) {
    return OrganizationAdminAccountMacie2Args(
      adminAccountId: pulumi.Input.asInput<String>(map['adminAccountId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
