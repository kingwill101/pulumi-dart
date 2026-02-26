// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VaultLockConfiguration.
class VaultLockConfigurationArgs {
  /// Name of the backup vault to add a lock configuration for.
  final Input<String> backupVaultName;

  /// The number of days before the lock date. If omitted creates a vault lock in <span pulumi-lang-nodejs="`governance`" pulumi-lang-dotnet="`Governance`" pulumi-lang-go="`governance`" pulumi-lang-python="`governance`" pulumi-lang-yaml="`governance`" pulumi-lang-java="`governance`">`governance`</span> mode, otherwise it will create a vault lock in <span pulumi-lang-nodejs="`compliance`" pulumi-lang-dotnet="`Compliance`" pulumi-lang-go="`compliance`" pulumi-lang-python="`compliance`" pulumi-lang-yaml="`compliance`" pulumi-lang-java="`compliance`">`compliance`</span> mode.
  final Input<int>? changeableForDays;

  /// The maximum retention period that the vault retains its recovery points.
  final Input<int>? maxRetentionDays;

  /// The minimum retention period that the vault retains its recovery points.
  final Input<int>? minRetentionDays;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      backupVaultName: Input.asInput<String>(map['backupVaultName']),
      changeableForDays: Input.asOptionalInput<int>(map['changeableForDays']),
      maxRetentionDays: Input.asOptionalInput<int>(map['maxRetentionDays']),
      minRetentionDays: Input.asOptionalInput<int>(map['minRetentionDays']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
