// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_guardduty_organization_admin_account_organization_admin_account_args_doc}
/// The set of arguments for OrganizationAdminAccount.
/// {@endtemplate}
/// {@macro pulumi_guardduty_organization_admin_account_organization_admin_account_args_doc}
class OrganizationAdminAccountArgs {
  /// AWS account identifier to designate as a delegated administrator for GuardDuty.
  final pulumi.Input<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationAdminAccountArgs].
  /// [adminAccountId] AWS account identifier to designate as a delegated administrator for GuardDuty.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationAdminAccountArgs({required String adminAccountId, String? region})
    : adminAccountId = pulumi.Input.asInput<String>(adminAccountId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminAccountId': adminAccountId,
      'region': ?region,
    };
  }

  factory OrganizationAdminAccountArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationAdminAccountArgs(
      adminAccountId: map['adminAccountId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
