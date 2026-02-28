// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_macie2_organization_admin_account_organization_admin_account_args_doc}
/// The set of arguments for OrganizationAdminAccount.
/// {@endtemplate}
/// {@macro pulumi_macie2_organization_admin_account_organization_admin_account_args_doc}
class OrganizationAdminAccountArgs {
  /// The AWS account ID for the account to designate as the delegated Amazon Macie administrator account for the organization.
  final pulumi.Input<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationAdminAccountArgs].
  /// [adminAccountId] The AWS account ID for the account to designate as the delegated Amazon Macie administrator account for the organization.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationAdminAccountArgs({
    required String adminAccountId,
    String? region,
  })  : adminAccountId = pulumi.Input.asInput<String>(adminAccountId),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminAccountId'] = adminAccountId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory OrganizationAdminAccountArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationAdminAccountArgs(
      adminAccountId: map['adminAccountId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
