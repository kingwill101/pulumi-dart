// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VaultLockConfiguration.
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

  VaultLockConfigurationArgs({
    required this.backupVaultName,
    this.changeableForDays,
    this.maxRetentionDays,
    this.minRetentionDays,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupVaultName'] = backupVaultName;
    final changeableForDaysValue = changeableForDays;
    if (changeableForDaysValue != null) {
      map['changeableForDays'] = changeableForDaysValue;
    }
    final maxRetentionDaysValue = maxRetentionDays;
    if (maxRetentionDaysValue != null) {
      map['maxRetentionDays'] = maxRetentionDaysValue;
    }
    final minRetentionDaysValue = minRetentionDays;
    if (minRetentionDaysValue != null) {
      map['minRetentionDays'] = minRetentionDaysValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory VaultLockConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return VaultLockConfigurationArgs(
      backupVaultName: pulumi.Input.asInput<String>(map['backupVaultName']),
      changeableForDays:
          pulumi.Input.asOptionalInput<int>(map['changeableForDays']),
      maxRetentionDays:
          pulumi.Input.asOptionalInput<int>(map['maxRetentionDays']),
      minRetentionDays:
          pulumi.Input.asOptionalInput<int>(map['minRetentionDays']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
