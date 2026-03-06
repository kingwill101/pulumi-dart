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
  const OrganizationAdminAccountRegistrationArgs({
    required this.adminAccountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminAccountId': adminAccountId,
      'region': ?region,
    };
  }

  factory OrganizationAdminAccountRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationAdminAccountRegistrationArgs(
      adminAccountId: pulumi.Input.fromValue(map['adminAccountId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

