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
  const PolicyRule({
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
      archiveDays: (() { final guardedValue = map['archiveDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backupType: (() { final guardedValue = map['backupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSourceFilters: (() { final guardedValue = map['dataSourceFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyRuleDataSourceFilter>(guardedValue, (value) => PolicyRuleDataSourceFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      keepLatestSnapshots: (() { final guardedValue = map['keepLatestSnapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicationRegionId: (() { final guardedValue = map['replicationRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retention: (() { final guardedValue = map['retention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retentionRules: (() { final guardedValue = map['retentionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyRuleRetentionRule>(guardedValue, (value) => PolicyRuleRetentionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagFilters: (() { final guardedValue = map['tagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyRuleTagFilter>(guardedValue, (value) => PolicyRuleTagFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vaultId: (() { final guardedValue = map['vaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

