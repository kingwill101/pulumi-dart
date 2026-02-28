// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_detective_organization_admin_account_organization_admin_account_args_doc}
/// The set of arguments for OrganizationAdminAccount.
/// {@endtemplate}
/// {@macro pulumi_detective_organization_admin_account_organization_admin_account_args_doc}
class OrganizationAdminAccountArgs {
  /// AWS account identifier to designate as a delegated administrator for Detective.
  final pulumi.Input<String> accountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationAdminAccountArgs].
  /// [accountId] AWS account identifier to designate as a delegated administrator for Detective.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationAdminAccountArgs({
    required String accountId,
    String? region,
  })  : accountId = pulumi.Input.asInput<String>(accountId),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      accountId: map['accountId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
