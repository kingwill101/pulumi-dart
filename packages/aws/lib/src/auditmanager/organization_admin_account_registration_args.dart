// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_auditmanager_organization_admin_account_registration_organization_admin_account_registration_args_doc}
/// The set of arguments for OrganizationAdminAccountRegistration.
/// {@endtemplate}
/// {@macro pulumi_auditmanager_organization_admin_account_registration_organization_admin_account_registration_args_doc}
class OrganizationAdminAccountRegistrationArgs {
  /// Identifier for the organization administrator account.
  final pulumi.Input<String> adminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationAdminAccountRegistrationArgs].
  /// [adminAccountId] Identifier for the organization administrator account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationAdminAccountRegistrationArgs({
    required String adminAccountId,
    String? region,
  }) : adminAccountId = pulumi.Input.asInput<String>(adminAccountId),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminAccountId': adminAccountId,
      'region': ?region,
    };
  }

  factory OrganizationAdminAccountRegistrationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return OrganizationAdminAccountRegistrationArgs(
      adminAccountId: map['adminAccountId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
