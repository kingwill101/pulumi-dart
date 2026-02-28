// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_auditmanager_account_registration_account_registration_args_doc}
/// The set of arguments for AccountRegistration.
/// {@endtemplate}
/// {@macro pulumi_auditmanager_account_registration_account_registration_args_doc}
class AccountRegistrationArgs {
  /// Identifier for the delegated administrator account.
  final pulumi.Input<String>? delegatedAdminAccount;

  /// Flag to deregister AuditManager in the account upon destruction. Defaults to `false` (ie. AuditManager will remain active in the account, even if this resource is removed).
  final pulumi.Input<bool>? deregisterOnDestroy;

  /// KMS key identifier.
  final pulumi.Input<String>? kmsKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AccountRegistrationArgs].
  /// [delegatedAdminAccount] Identifier for the delegated administrator account.
  /// [deregisterOnDestroy] Flag to deregister AuditManager in the account upon destruction. Defaults to `false` (ie. AuditManager will remain active in the account, even if this resource is removed).
  /// [kmsKey] KMS key identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AccountRegistrationArgs({
    String? delegatedAdminAccount,
    bool? deregisterOnDestroy,
    String? kmsKey,
    String? region,
  })  : delegatedAdminAccount =
            pulumi.Input.asOptionalInput<String>(delegatedAdminAccount),
        deregisterOnDestroy =
            pulumi.Input.asOptionalInput<bool>(deregisterOnDestroy),
        kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final delegatedAdminAccountValue = delegatedAdminAccount;
    if (delegatedAdminAccountValue != null) {
      map['delegatedAdminAccount'] = delegatedAdminAccountValue;
    }
    final deregisterOnDestroyValue = deregisterOnDestroy;
    if (deregisterOnDestroyValue != null) {
      map['deregisterOnDestroy'] = deregisterOnDestroyValue;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AccountRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return AccountRegistrationArgs(
      delegatedAdminAccount: map['delegatedAdminAccount'] == null
          ? null
          : map['delegatedAdminAccount'] as String,
      deregisterOnDestroy: map['deregisterOnDestroy'] == null
          ? null
          : map['deregisterOnDestroy'] as bool,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
