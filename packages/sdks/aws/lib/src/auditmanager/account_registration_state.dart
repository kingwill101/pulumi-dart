// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountRegistration resources.
class AccountRegistrationState {
  /// Identifier for the delegated administrator account.
  final pulumi.Input<String>? delegatedAdminAccount;
  /// Flag to deregister AuditManager in the account upon destruction. Defaults to `false` (ie. AuditManager will remain active in the account, even if this resource is removed).
  final pulumi.Input<bool>? deregisterOnDestroy;
  /// KMS key identifier.
  final pulumi.Input<String>? kmsKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of the account registration request.
  final pulumi.Input<String>? status;

  /// Creates a new [AccountRegistrationState].
  /// [delegatedAdminAccount] Identifier for the delegated administrator account.
  /// [deregisterOnDestroy] Flag to deregister AuditManager in the account upon destruction. Defaults to `false` (ie. AuditManager will remain active in the account, even if this resource is removed).
  /// [kmsKey] KMS key identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the account registration request.
  AccountRegistrationState({
    this.delegatedAdminAccount,
    this.deregisterOnDestroy,
    this.kmsKey,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedAdminAccount': ?delegatedAdminAccount,
      'deregisterOnDestroy': ?deregisterOnDestroy,
      'kmsKey': ?kmsKey,
      'region': ?region,
      'status': ?status,
    };
  }

  factory AccountRegistrationState.fromMap(Map<String, dynamic> map) {
    return AccountRegistrationState(
      delegatedAdminAccount: map['delegatedAdminAccount'] == null ? null : ((map['delegatedAdminAccount'] as String).input()).input(),
      deregisterOnDestroy: map['deregisterOnDestroy'] == null ? null : ((map['deregisterOnDestroy'] as bool).input()).input(),
      kmsKey: map['kmsKey'] == null ? null : ((map['kmsKey'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}

