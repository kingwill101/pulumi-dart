// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_organization_admin_account_organization_admin_account_args_doc}
/// The set of arguments for OrganizationAdminAccount.
/// {@endtemplate}
/// {@macro pulumi_securityhub_organization_admin_account_organization_admin_account_args_doc}
class OrganizationAdminAccountArgs {
  /// The AWS account identifier of the account to designate as the Security Hub administrator account.
  final pulumi.Input<String> adminAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationAdminAccountArgs].
  /// [adminAccountId] The AWS account identifier of the account to designate as the Security Hub administrator account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationAdminAccountArgs({
    required pulumi.Output<String> adminAccountId,
    pulumi.Output<String>? region,
  }) :
      adminAccountId = pulumi.Input.asInput<String>(adminAccountId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminAccountId': adminAccountId,
      'region': ?region,
    };
  }

  factory OrganizationAdminAccountArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationAdminAccountArgs(
      adminAccountId: pulumi.Output.create<String>(map['adminAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

