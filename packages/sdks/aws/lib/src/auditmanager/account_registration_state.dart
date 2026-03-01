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
    pulumi.Output<String>? delegatedAdminAccount,
    pulumi.Output<bool>? deregisterOnDestroy,
    pulumi.Output<String>? kmsKey,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
  }) :
      delegatedAdminAccount = pulumi.Input.asOptionalInput<String>(delegatedAdminAccount),
      deregisterOnDestroy = pulumi.Input.asOptionalInput<bool>(deregisterOnDestroy),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      delegatedAdminAccount: map['delegatedAdminAccount'] == null ? null : pulumi.Output.create<String>(map['delegatedAdminAccount'] as String),
      deregisterOnDestroy: map['deregisterOnDestroy'] == null ? null : pulumi.Output.create<bool>(map['deregisterOnDestroy'] as bool),
      kmsKey: map['kmsKey'] == null ? null : pulumi.Output.create<String>(map['kmsKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

