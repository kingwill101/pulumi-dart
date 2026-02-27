// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccountRegistration.
class AccountRegistrationArgs {
  /// Identifier for the delegated administrator account.
  final pulumi.Input<String>? delegatedAdminAccount;

  /// Flag to deregister AuditManager in the account upon destruction. Defaults to `false` (ie. AuditManager will remain active in the account, even if this resource is removed).
  final pulumi.Input<bool>? deregisterOnDestroy;

  /// KMS key identifier.
  final pulumi.Input<String>? kmsKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  AccountRegistrationArgs({
    this.delegatedAdminAccount,
    this.deregisterOnDestroy,
    this.kmsKey,
    this.region,
  });

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
      delegatedAdminAccount:
          pulumi.Input.asOptionalInput<String>(map['delegatedAdminAccount']),
      deregisterOnDestroy:
          pulumi.Input.asOptionalInput<bool>(map['deregisterOnDestroy']),
      kmsKey: pulumi.Input.asOptionalInput<String>(map['kmsKey']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
