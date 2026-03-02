// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_vault_lock_configuration_vault_lock_configuration_args_doc}
/// The set of arguments for VaultLockConfiguration.
/// {@endtemplate}
/// {@macro pulumi_backup_vault_lock_configuration_vault_lock_configuration_args_doc}
class VaultLockConfigurationArgs {
  /// Name of the backup vault to add a lock configuration for.
  final pulumi.Input<String> backupVaultName;
  /// The number of days before the lock date. If omitted creates a vault lock in `governance` mode, otherwise it will create a vault lock in `compliance` mode.
  final pulumi.Input<int>? changeableForDays;
  /// The maximum retention period that the vault retains its recovery points.
  final pulumi.Input<int>? maxRetentionDays;
  /// The minimum retention period that the vault retains its recovery points.
  final pulumi.Input<int>? minRetentionDays;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [VaultLockConfigurationArgs].
  /// [backupVaultName] Name of the backup vault to add a lock configuration for.
  /// [changeableForDays] The number of days before the lock date. If omitted creates a vault lock in `governance` mode, otherwise it will create a vault lock in `compliance` mode.
  /// [maxRetentionDays] The maximum retention period that the vault retains its recovery points.
  /// [minRetentionDays] The minimum retention period that the vault retains its recovery points.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  VaultLockConfigurationArgs({
    required this.backupVaultName,
    this.changeableForDays,
    this.maxRetentionDays,
    this.minRetentionDays,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultName': backupVaultName,
      'changeableForDays': ?changeableForDays,
      'maxRetentionDays': ?maxRetentionDays,
      'minRetentionDays': ?minRetentionDays,
      'region': ?region,
    };
  }

  factory VaultLockConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return VaultLockConfigurationArgs(
      backupVaultName: (map['backupVaultName'] as String).input(),
      changeableForDays: map['changeableForDays'] == null ? null : ((map['changeableForDays'] as int).input()).input(),
      maxRetentionDays: map['maxRetentionDays'] == null ? null : ((map['maxRetentionDays'] as int).input()).input(),
      minRetentionDays: map['minRetentionDays'] == null ? null : ((map['minRetentionDays'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

