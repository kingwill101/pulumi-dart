// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VaultPolicy resources.
class VaultPolicyState {
  /// The ARN of the vault.
  final pulumi.Input<String?>? backupVaultArn;
  /// Name of the backup vault to add policy for.
  final pulumi.Input<String?>? backupVaultName;
  /// The backup vault access policy document in JSON format.
  final pulumi.Input<String?>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [VaultPolicyState].
  /// [backupVaultArn] The ARN of the vault.
  /// [backupVaultName] Name of the backup vault to add policy for.
  /// [policy] The backup vault access policy document in JSON format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const VaultPolicyState({
    this.backupVaultArn,
    this.backupVaultName,
    this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultArn': ?backupVaultArn,
      'backupVaultName': ?backupVaultName,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory VaultPolicyState.fromMap(Map<String, dynamic> map) {
    return VaultPolicyState(
      backupVaultArn: (() { final guardedValue = map['backupVaultArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupVaultName: (() { final guardedValue = map['backupVaultName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
