// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ots_backup_plan_ots_detail.dart';
import 'ots_backup_plan_rule.dart';

/// {@template pulumi_hbr_ots_backup_plan_ots_backup_plan_args_doc}
/// The set of arguments for OtsBackupPlan.
/// {@endtemplate}
/// {@macro pulumi_hbr_ots_backup_plan_ots_backup_plan_args_doc}
class OtsBackupPlanArgs {
  /// Backup type. Valid values: `COMPLETE`.
  final pulumi.Input<String> backupType;

  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  final pulumi.Input<String>? crossAccountRoleName;

  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  final pulumi.Input<String>? crossAccountType;

  /// The original account ID of the cross account backup managed by the current account.
  final pulumi.Input<int>? crossAccountUserId;

  /// Whether to disable the backup task. Valid values: `true`, `false`. Default values: `false`.
  final pulumi.Input<bool>? disabled;

  /// The name of the Table store instance. **Note:** Required while source_type equals `OTS_TABLE`.
  final pulumi.Input<String>? instanceName;

  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  final pulumi.Input<String> otsBackupPlanName;

  /// The details about the Table store instance. See the following `Block ots_detail`. **Note:** Required while source_type equals `OTS_TABLE`.
  final pulumi.Input<List<OtsBackupPlanOtsDetail>>? otsDetails;

  /// Backup retention days, the minimum is 1.
  final pulumi.Input<String> retention;

  /// The backup plan rule. See the following `Block rules`. **Note:** Required while source_type equals `OTS_TABLE`.
  final pulumi.Input<List<OtsBackupPlanRule>>? rules;

  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// - `startTime` Backup start time, UNIX time seconds.
  final pulumi.Input<String>? schedule;

  /// The ID of backup vault.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [OtsBackupPlanArgs].
  /// [backupType] Backup type. Valid values: `COMPLETE`.
  /// [crossAccountRoleName] The role name created in the original account RAM backup by the cross account managed by the current account.
  /// [crossAccountType] The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  /// [crossAccountUserId] The original account ID of the cross account backup managed by the current account.
  /// [disabled] Whether to disable the backup task. Valid values: `true`, `false`. Default values: `false`.
  /// [instanceName] The name of the Table store instance. **Note:** Required while source_type equals `OTS_TABLE`.
  /// [otsBackupPlanName] The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  /// [otsDetails] The details about the Table store instance. See the following `Block ots_detail`. **Note:** Required while source_type equals `OTS_TABLE`.
  /// [retention] Backup retention days, the minimum is 1.
  /// [rules] The backup plan rule. See the following `Block rules`. **Note:** Required while source_type equals `OTS_TABLE`.
  /// [schedule] Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// [vaultId] The ID of backup vault.
  OtsBackupPlanArgs({
    required this.backupType,
    this.crossAccountRoleName,
    this.crossAccountType,
    this.crossAccountUserId,
    this.disabled,
    this.instanceName,
    required this.otsBackupPlanName,
    this.otsDetails,
    required this.retention,
    this.rules,
    this.schedule,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': backupType,
      'crossAccountRoleName': ?crossAccountRoleName,
      'crossAccountType': ?crossAccountType,
      'crossAccountUserId': ?crossAccountUserId,
      'disabled': ?disabled,
      'instanceName': ?instanceName,
      'otsBackupPlanName': otsBackupPlanName,
      'otsDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<OtsBackupPlanOtsDetail>,
            List<Map<String, dynamic>>
          >(
            otsDetails,
            (value) =>
                pulumi.Input.encodeList<
                  OtsBackupPlanOtsDetail,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'retention': retention,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<OtsBackupPlanRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  OtsBackupPlanRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'schedule': ?schedule,
      'vaultId': ?vaultId,
    };
  }

  factory OtsBackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return OtsBackupPlanArgs(
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      crossAccountRoleName: (() {
        final guardedValue = map['crossAccountRoleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      crossAccountType: (() {
        final guardedValue = map['crossAccountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      crossAccountUserId: (() {
        final guardedValue = map['crossAccountUserId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      otsBackupPlanName: pulumi.Input.fromValue(
        map['otsBackupPlanName'] as String,
      ),
      otsDetails: (() {
        final guardedValue = map['otsDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<OtsBackupPlanOtsDetail>(
            guardedValue,
            (value) => OtsBackupPlanOtsDetail.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      retention: pulumi.Input.fromValue(map['retention'] as String),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<OtsBackupPlanRule>(
            guardedValue,
            (value) => OtsBackupPlanRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      schedule: (() {
        final guardedValue = map['schedule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vaultId: (() {
        final guardedValue = map['vaultId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
