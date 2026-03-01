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
    pulumi.Output<String>? backupVaultArn,
    pulumi.Output<String>? backupVaultName,
    pulumi.Output<int>? changeableForDays,
    pulumi.Output<int>? maxRetentionDays,
    pulumi.Output<int>? minRetentionDays,
    pulumi.Output<String>? region,
  }) :
      backupVaultArn = pulumi.Input.asOptionalInput<String>(backupVaultArn),
      backupVaultName = pulumi.Input.asOptionalInput<String>(backupVaultName),
      changeableForDays = pulumi.Input.asOptionalInput<int>(changeableForDays),
      maxRetentionDays = pulumi.Input.asOptionalInput<int>(maxRetentionDays),
      minRetentionDays = pulumi.Input.asOptionalInput<int>(minRetentionDays),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      backupVaultArn: map['backupVaultArn'] == null ? null : pulumi.Output.create<String>(map['backupVaultArn'] as String),
      backupVaultName: map['backupVaultName'] == null ? null : pulumi.Output.create<String>(map['backupVaultName'] as String),
      changeableForDays: map['changeableForDays'] == null ? null : pulumi.Output.create<int>(map['changeableForDays'] as int),
      maxRetentionDays: map['maxRetentionDays'] == null ? null : pulumi.Output.create<int>(map['maxRetentionDays'] as int),
      minRetentionDays: map['minRetentionDays'] == null ? null : pulumi.Output.create<int>(map['minRetentionDays'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

