// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VaultLockConfiguration resources.
class VaultLockConfigurationState {
  /// The ARN of the vault.
  final pulumi.Input<String>? backupVaultArn;
  /// Name of the backup vault to add a lock configuration for.
  final pulumi.Input<String>? backupVaultName;
  /// The number of days before the lock date. If omitted creates a vault lock in `governance` mode, otherwise it will create a vault lock in `compliance` mode.
  final pulumi.Input<int>? changeableForDays;
  /// The maximum retention period that the vault retains its recovery points.
  final pulumi.Input<int>? maxRetentionDays;
  /// The minimum retention period that the vault retains its recovery points.
  final pulumi.Input<int>? minRetentionDays;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [VaultLockConfigurationState].
  /// [backupVaultArn] The ARN of the vault.
  /// [backupVaultName] Name of the backup vault to add a lock configuration for.
  /// [changeableForDays] The number of days before the lock date. If omitted creates a vault lock in `governance` mode, otherwise it will create a vault lock in `compliance` mode.
  /// [maxRetentionDays] The maximum retention period that the vault retains its recovery points.
  /// [minRetentionDays] The minimum retention period that the vault retains its recovery points.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  VaultLockConfigurationState({
    this.backupVaultArn,
    this.backupVaultName,
    this.changeableForDays,
    this.maxRetentionDays,
    this.minRetentionDays,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultArn': ?backupVaultArn,
      'backupVaultName': ?backupVaultName,
      'changeableForDays': ?changeableForDays,
      'maxRetentionDays': ?maxRetentionDays,
      'minRetentionDays': ?minRetentionDays,
      'region': ?region,
    };
  }

  factory VaultLockConfigurationState.fromMap(Map<String, dynamic> map) {
    return VaultLockConfigurationState(
      backupVaultArn: map['backupVaultArn'] == null ? null : (map['backupVaultArn'] as String).input(),
      backupVaultName: map['backupVaultName'] == null ? null : (map['backupVaultName'] as String).input(),
      changeableForDays: map['changeableForDays'] == null ? null : (map['changeableForDays'] as int).input(),
      maxRetentionDays: map['maxRetentionDays'] == null ? null : (map['maxRetentionDays'] as int).input(),
      minRetentionDays: map['minRetentionDays'] == null ? null : (map['minRetentionDays'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

