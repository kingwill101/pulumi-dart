// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_auditmanager_account_registration_account_registration_args_doc}
/// The set of arguments for AccountRegistration.
/// {@endtemplate}
/// {@macro pulumi_auditmanager_account_registration_account_registration_args_doc}
class AccountRegistrationArgs {
  /// Identifier for the delegated administrator account.
  final pulumi.Input<String?>? delegatedAdminAccount;
  /// Flag to deregister AuditManager in the account upon destruction. Defaults to `false` (ie. AuditManager will remain active in the account, even if this resource is removed).
  final pulumi.Input<bool?>? deregisterOnDestroy;
  /// KMS key identifier.
  final pulumi.Input<String?>? kmsKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AccountRegistrationArgs].
  /// [delegatedAdminAccount] Identifier for the delegated administrator account.
  /// [deregisterOnDestroy] Flag to deregister AuditManager in the account upon destruction. Defaults to `false` (ie. AuditManager will remain active in the account, even if this resource is removed).
  /// [kmsKey] KMS key identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AccountRegistrationArgs({
    this.delegatedAdminAccount,
    this.deregisterOnDestroy,
    this.kmsKey,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedAdminAccount': ?delegatedAdminAccount,
      'deregisterOnDestroy': ?deregisterOnDestroy,
      'kmsKey': ?kmsKey,
      'region': ?region,
    };
  }

  factory AccountRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return AccountRegistrationArgs(
      delegatedAdminAccount: (() { final guardedValue = map['delegatedAdminAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deregisterOnDestroy: (() { final guardedValue = map['deregisterOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
