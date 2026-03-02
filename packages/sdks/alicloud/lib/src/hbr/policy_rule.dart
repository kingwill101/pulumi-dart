// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_rule_data_source_filter.dart';
import 'policy_rule_retention_rule.dart';
import 'policy_rule_tag_filter.dart';

class PolicyRule {
  /// This parameter is required only when the value of `RuleType` is **TRANSITION. The minimum value is 30, and the Retention-ArchiveDays needs to be greater than or equal to 60
  final pulumi.Input<int>? archiveDays;
  /// This parameter is required only when the `RuleType` value is **BACKUP. Backup Type
  final pulumi.Input<String>? backupType;
  /// This parameter is required only when the value of RuleType is TAG. See `data_source_filters` below.
  final pulumi.Input<List<PolicyRuleDataSourceFilter>>? dataSourceFilters;
  /// This parameter is required only when `RuleType` is set to `BACKUP`
  final pulumi.Input<int>? keepLatestSnapshots;
  /// Only when the `RuleType` value is
  final pulumi.Input<String>? replicationRegionId;
  /// Retention time, in days
  final pulumi.Input<int>? retention;
  /// This parameter is required only when the value of `RuleType` is `TRANSITION`. See `retention_rules` below.
  final pulumi.Input<List<PolicyRuleRetentionRule>>? retentionRules;
  /// Rule ID
  final pulumi.Input<String>? ruleId;
  /// Rule Type
  final pulumi.Input<String> ruleType;
  /// This parameter is required only if you set the `RuleType` parameter to `BACKUP`. This parameter specifies the backup schedule settings. Format: `I|{startTime}|{interval}`. The system runs the first backup job at a point in time that is specified in the {startTime} parameter and the subsequent backup jobs at an interval that is specified in the {interval} parameter. The system does not run a backup job before the specified point in time. Each backup job, except the first one, starts only after the previous backup job is complete. For example, `I|1631685600|P1D` specifies that the system runs the first backup job at 14:00:00 on September 15, 2021 and the subsequent backup jobs once a day.  *   startTime: the time at which the system starts to run a backup job. The time must follow the UNIX time format. Unit: seconds. *   interval: the interval at which the system runs a backup job. The interval must follow the ISO 8601 standard. For example, PT1H specifies an interval of one hour. P1D specifies an interval of one day.
  final pulumi.Input<String>? schedule;
  /// This parameter is required only when the value of RuleType is TAG. Resource label filtering rules. See `tag_filters` below.
  final pulumi.Input<List<PolicyRuleTagFilter>>? tagFilters;
  /// Vault ID
  final pulumi.Input<String>? vaultId;

  /// Creates a new [PolicyRule].
  /// [archiveDays] This parameter is required only when the value of `RuleType` is **TRANSITION. The minimum value is 30, and the Retention-ArchiveDays needs to be greater than or equal to 60
  /// [backupType] This parameter is required only when the `RuleType` value is **BACKUP. Backup Type
  /// [dataSourceFilters] This parameter is required only when the value of RuleType is TAG. See `data_source_filters` below.
  /// [keepLatestSnapshots] This parameter is required only when `RuleType` is set to `BACKUP`
  /// [replicationRegionId] Only when the `RuleType` value is
  /// [retention] Retention time, in days
  /// [retentionRules] This parameter is required only when the value of `RuleType` is `TRANSITION`. See `retention_rules` below.
  /// [ruleId] Rule ID
  /// [ruleType] Rule Type
  /// [schedule] This parameter is required only if you set the `RuleType` parameter to `BACKUP`. This parameter specifies the backup schedule settings. Format: `I|{startTime}|{interval}`. The system runs the first backup job at a point in time that is specified in the {startTime} parameter and the subsequent backup jobs at an interval that is specified in the {interval} parameter. The system does not run a backup job before the specified point in time. Each backup job, except the first one, starts only after the previous backup job is complete. For example, `I|1631685600|P1D` specifies that the system runs the first backup job at 14:00:00 on September 15, 2021 and the subsequent backup jobs once a day.  *   startTime: the time at which the system starts to run a backup job. The time must follow the UNIX time format. Unit: seconds. *   interval: the interval at which the system runs a backup job. The interval must follow the ISO 8601 standard. For example, PT1H specifies an interval of one hour. P1D specifies an interval of one day.
  /// [tagFilters] This parameter is required only when the value of RuleType is TAG. Resource label filtering rules. See `tag_filters` below.
  /// [vaultId] Vault ID
  PolicyRule({
    this.archiveDays,
    this.backupType,
    this.dataSourceFilters,
    this.keepLatestSnapshots,
    this.replicationRegionId,
    this.retention,
    this.retentionRules,
    this.ruleId,
    required this.ruleType,
    this.schedule,
    this.tagFilters,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveDays': ?archiveDays,
      'backupType': ?backupType,
      'dataSourceFilters': ?pulumi.Input.mapOptionalInputValue<List<PolicyRuleDataSourceFilter>, List<Map<String, dynamic>>>(dataSourceFilters, (value) => pulumi.Input.encodeList<PolicyRuleDataSourceFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keepLatestSnapshots': ?keepLatestSnapshots,
      'replicationRegionId': ?replicationRegionId,
      'retention': ?retention,
      'retentionRules': ?pulumi.Input.mapOptionalInputValue<List<PolicyRuleRetentionRule>, List<Map<String, dynamic>>>(retentionRules, (value) => pulumi.Input.encodeList<PolicyRuleRetentionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleId': ?ruleId,
      'ruleType': ruleType,
      'schedule': ?schedule,
      'tagFilters': ?pulumi.Input.mapOptionalInputValue<List<PolicyRuleTagFilter>, List<Map<String, dynamic>>>(tagFilters, (value) => pulumi.Input.encodeList<PolicyRuleTagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vaultId': ?vaultId,
    };
  }

  factory PolicyRule.fromMap(Map<String, dynamic> map) {
    return PolicyRule(
      archiveDays: map['archiveDays'] == null ? null : (map['archiveDays']! as int).input(),
      backupType: map['backupType'] == null ? null : (map['backupType']! as String).input(),
      dataSourceFilters: map['dataSourceFilters'] == null ? null : (pulumi.Input.decodeList<PolicyRuleDataSourceFilter>(map['dataSourceFilters']!, (value) => PolicyRuleDataSourceFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      keepLatestSnapshots: map['keepLatestSnapshots'] == null ? null : (map['keepLatestSnapshots']! as int).input(),
      replicationRegionId: map['replicationRegionId'] == null ? null : (map['replicationRegionId']! as String).input(),
      retention: map['retention'] == null ? null : (map['retention']! as int).input(),
      retentionRules: map['retentionRules'] == null ? null : (pulumi.Input.decodeList<PolicyRuleRetentionRule>(map['retentionRules']!, (value) => PolicyRuleRetentionRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleId: map['ruleId'] == null ? null : (map['ruleId']! as String).input(),
      ruleType: (map['ruleType'] as String).input(),
      schedule: map['schedule'] == null ? null : (map['schedule']! as String).input(),
      tagFilters: map['tagFilters'] == null ? null : (pulumi.Input.decodeList<PolicyRuleTagFilter>(map['tagFilters']!, (value) => PolicyRuleTagFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vaultId: map['vaultId'] == null ? null : (map['vaultId']! as String).input(),
    );
  }
}

