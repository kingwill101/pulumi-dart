// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_file_share_backup.dart';
import 'policy_file_share_retention_daily.dart';
import 'policy_file_share_retention_monthly.dart';
import 'policy_file_share_retention_weekly.dart';
import 'policy_file_share_retention_yearly.dart';

/// {@template pulumi_backup_policy_file_share_policy_file_share_args_doc}
/// The set of arguments for PolicyFileShare.
/// {@endtemplate}
/// {@macro pulumi_backup_policy_file_share_policy_file_share_args_doc}
class PolicyFileShareArgs {
  /// Configures the Policy backup frequency and times as documented in the `backup` block below.
  final pulumi.Input<PolicyFileShareBackup> backup;
  /// The backup tier to use. Possible values are `vault-standard` and `snapshot`. Defaults to `snapshot`.
  ///
  /// > **Note:** When `backup_tier` is set to `vault-standard`, the `snapshot_retention_in_days` value must be less than the `retention_daily` count.
  final pulumi.Input<String>? backupTier;
  /// Specifies the name of the policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultName;
  /// The name of the resource group in which to create the policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Configures the policy daily retention as documented in the `retention_daily` block below.
  final pulumi.Input<PolicyFileShareRetentionDaily> retentionDaily;
  /// Configures the policy monthly retention as documented in the `retention_monthly` block below.
  final pulumi.Input<PolicyFileShareRetentionMonthly>? retentionMonthly;
  /// Configures the policy weekly retention as documented in the `retention_weekly` block below.
  final pulumi.Input<PolicyFileShareRetentionWeekly>? retentionWeekly;
  /// Configures the policy yearly retention as documented in the `retention_yearly` block below.
  final pulumi.Input<PolicyFileShareRetentionYearly>? retentionYearly;
  /// The number of days to retain the snapshots. Defaults to `0`.
  final pulumi.Input<int>? snapshotRetentionInDays;
  /// Specifies the timezone. [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Defaults to `UTC`
  ///
  /// > **Note:** The maximum number of snapshots that Azure Files can retain is 200. If your combined snapshot count exceeds 200 based on your retention policies, it will result in an error. See [this](https://docs.microsoft.com/azure/backup/backup-azure-files-faq#what-is-the-maximum-retention-i-can-configure-for-backups) article for more information.
  final pulumi.Input<String>? timezone;

  /// Creates a new [PolicyFileShareArgs].
  /// [backup] Configures the Policy backup frequency and times as documented in the `backup` block below.
  /// [backupTier] The backup tier to use. Possible values are `vault-standard` and `snapshot`. Defaults to `snapshot`.
  /// [name] Specifies the name of the policy. Changing this forces a new resource to be created.
  /// [recoveryVaultName] Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the policy. Changing this forces a new resource to be created.
  /// [retentionDaily] Configures the policy daily retention as documented in the `retention_daily` block below.
  /// [retentionMonthly] Configures the policy monthly retention as documented in the `retention_monthly` block below.
  /// [retentionWeekly] Configures the policy weekly retention as documented in the `retention_weekly` block below.
  /// [retentionYearly] Configures the policy yearly retention as documented in the `retention_yearly` block below.
  /// [snapshotRetentionInDays] The number of days to retain the snapshots. Defaults to `0`.
  /// [timezone] Specifies the timezone. [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Defaults to `UTC`
  PolicyFileShareArgs({
    required PolicyFileShareBackup backup,
    String? backupTier,
    String? name,
    required String recoveryVaultName,
    required String resourceGroupName,
    required PolicyFileShareRetentionDaily retentionDaily,
    PolicyFileShareRetentionMonthly? retentionMonthly,
    PolicyFileShareRetentionWeekly? retentionWeekly,
    PolicyFileShareRetentionYearly? retentionYearly,
    int? snapshotRetentionInDays,
    String? timezone,
  }) :
      backup = pulumi.Input.asInput<PolicyFileShareBackup>(backup),
      backupTier = pulumi.Input.asOptionalInput<String>(backupTier),
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryVaultName = pulumi.Input.asInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retentionDaily = pulumi.Input.asInput<PolicyFileShareRetentionDaily>(retentionDaily),
      retentionMonthly = pulumi.Input.asOptionalInput<PolicyFileShareRetentionMonthly>(retentionMonthly),
      retentionWeekly = pulumi.Input.asOptionalInput<PolicyFileShareRetentionWeekly>(retentionWeekly),
      retentionYearly = pulumi.Input.asOptionalInput<PolicyFileShareRetentionYearly>(retentionYearly),
      snapshotRetentionInDays = pulumi.Input.asOptionalInput<int>(snapshotRetentionInDays),
      timezone = pulumi.Input.asOptionalInput<String>(timezone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': pulumi.Input.mapInputValue<PolicyFileShareBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'backupTier': ?backupTier,
      'name': ?name,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
      'retentionDaily': pulumi.Input.mapInputValue<PolicyFileShareRetentionDaily, Map<String, dynamic>>(retentionDaily, (value) => value.toMap()),
      'retentionMonthly': ?pulumi.Input.mapOptionalInputValue<PolicyFileShareRetentionMonthly, Map<String, dynamic>>(retentionMonthly, (value) => value.toMap()),
      'retentionWeekly': ?pulumi.Input.mapOptionalInputValue<PolicyFileShareRetentionWeekly, Map<String, dynamic>>(retentionWeekly, (value) => value.toMap()),
      'retentionYearly': ?pulumi.Input.mapOptionalInputValue<PolicyFileShareRetentionYearly, Map<String, dynamic>>(retentionYearly, (value) => value.toMap()),
      'snapshotRetentionInDays': ?snapshotRetentionInDays,
      'timezone': ?timezone,
    };
  }

  factory PolicyFileShareArgs.fromMap(Map<String, dynamic> map) {
    return PolicyFileShareArgs(
      backup: PolicyFileShareBackup.fromMap((map['backup'] as Map).cast<String, dynamic>()),
      backupTier: map['backupTier'] == null ? null : map['backupTier'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      recoveryVaultName: map['recoveryVaultName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      retentionDaily: PolicyFileShareRetentionDaily.fromMap((map['retentionDaily'] as Map).cast<String, dynamic>()),
      retentionMonthly: map['retentionMonthly'] == null ? null : PolicyFileShareRetentionMonthly.fromMap((map['retentionMonthly'] as Map).cast<String, dynamic>()),
      retentionWeekly: map['retentionWeekly'] == null ? null : PolicyFileShareRetentionWeekly.fromMap((map['retentionWeekly'] as Map).cast<String, dynamic>()),
      retentionYearly: map['retentionYearly'] == null ? null : PolicyFileShareRetentionYearly.fromMap((map['retentionYearly'] as Map).cast<String, dynamic>()),
      snapshotRetentionInDays: map['snapshotRetentionInDays'] == null ? null : map['snapshotRetentionInDays'] as int,
      timezone: map['timezone'] == null ? null : map['timezone'] as String,
    );
  }
}

