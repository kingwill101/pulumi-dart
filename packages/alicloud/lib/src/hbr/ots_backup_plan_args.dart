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
    required String backupType,
    String? crossAccountRoleName,
    String? crossAccountType,
    int? crossAccountUserId,
    bool? disabled,
    String? instanceName,
    required String otsBackupPlanName,
    List<OtsBackupPlanOtsDetail>? otsDetails,
    required String retention,
    List<OtsBackupPlanRule>? rules,
    String? schedule,
    String? vaultId,
  }) :
      backupType = pulumi.Input.asInput<String>(backupType),
      crossAccountRoleName = pulumi.Input.asOptionalInput<String>(crossAccountRoleName),
      crossAccountType = pulumi.Input.asOptionalInput<String>(crossAccountType),
      crossAccountUserId = pulumi.Input.asOptionalInput<int>(crossAccountUserId),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      otsBackupPlanName = pulumi.Input.asInput<String>(otsBackupPlanName),
      otsDetails = pulumi.Input.asOptionalInput<List<OtsBackupPlanOtsDetail>>(otsDetails),
      retention = pulumi.Input.asInput<String>(retention),
      rules = pulumi.Input.asOptionalInput<List<OtsBackupPlanRule>>(rules),
      schedule = pulumi.Input.asOptionalInput<String>(schedule),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupType': backupType,
      'crossAccountRoleName': ?crossAccountRoleName,
      'crossAccountType': ?crossAccountType,
      'crossAccountUserId': ?crossAccountUserId,
      'disabled': ?disabled,
      'instanceName': ?instanceName,
      'otsBackupPlanName': otsBackupPlanName,
      'otsDetails': ?pulumi.Input.mapOptionalInputValue<List<OtsBackupPlanOtsDetail>, List<Map<String, dynamic>>>(otsDetails, (value) => pulumi.Input.encodeList<OtsBackupPlanOtsDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retention': retention,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<OtsBackupPlanRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<OtsBackupPlanRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedule': ?schedule,
      'vaultId': ?vaultId,
    };
  }

  factory OtsBackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return OtsBackupPlanArgs(
      backupType: map['backupType'] as String,
      crossAccountRoleName: map['crossAccountRoleName'] == null ? null : map['crossAccountRoleName'] as String,
      crossAccountType: map['crossAccountType'] == null ? null : map['crossAccountType'] as String,
      crossAccountUserId: map['crossAccountUserId'] == null ? null : map['crossAccountUserId'] as int,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      otsBackupPlanName: map['otsBackupPlanName'] as String,
      otsDetails: map['otsDetails'] == null ? null : pulumi.Input.decodeList<OtsBackupPlanOtsDetail>(map['otsDetails'], (value) => OtsBackupPlanOtsDetail.fromMap((value as Map).cast<String, dynamic>())),
      retention: map['retention'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<OtsBackupPlanRule>(map['rules'], (value) => OtsBackupPlanRule.fromMap((value as Map).cast<String, dynamic>())),
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
      vaultId: map['vaultId'] == null ? null : map['vaultId'] as String,
    );
  }
}

