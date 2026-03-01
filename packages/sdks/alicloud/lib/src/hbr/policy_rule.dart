// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_rule_data_source_filter.dart';
import 'policy_rule_retention_rule.dart';
import 'policy_rule_tag_filter.dart';

class PolicyRule {
  /// This parameter is required only when the value of `RuleType` is **TRANSITION. The minimum value is 30, and the Retention-ArchiveDays needs to be greater than or equal to 60
  final int? archiveDays;
  /// This parameter is required only when the `RuleType` value is **BACKUP. Backup Type
  final String? backupType;
  /// This parameter is required only when the value of RuleType is TAG. See `data_source_filters` below.
  final List<PolicyRuleDataSourceFilter>? dataSourceFilters;
  /// This parameter is required only when `RuleType` is set to `BACKUP`
  final int? keepLatestSnapshots;
  /// Only when the `RuleType` value is
  final String? replicationRegionId;
  /// Retention time, in days
  final int? retention;
  /// This parameter is required only when the value of `RuleType` is `TRANSITION`. See `retention_rules` below.
  final List<PolicyRuleRetentionRule>? retentionRules;
  /// Rule ID
  final String? ruleId;
  /// Rule Type
  final String ruleType;
  /// This parameter is required only if you set the `RuleType` parameter to `BACKUP`. This parameter specifies the backup schedule settings. Format: `I|{startTime}|{interval}`. The system runs the first backup job at a point in time that is specified in the {startTime} parameter and the subsequent backup jobs at an interval that is specified in the {interval} parameter. The system does not run a backup job before the specified point in time. Each backup job, except the first one, starts only after the previous backup job is complete. For example, `I|1631685600|P1D` specifies that the system runs the first backup job at 14:00:00 on September 15, 2021 and the subsequent backup jobs once a day.  *   startTime: the time at which the system starts to run a backup job. The time must follow the UNIX time format. Unit: seconds. *   interval: the interval at which the system runs a backup job. The interval must follow the ISO 8601 standard. For example, PT1H specifies an interval of one hour. P1D specifies an interval of one day.
  final String? schedule;
  /// This parameter is required only when the value of RuleType is TAG. Resource label filtering rules. See `tag_filters` below.
  final List<PolicyRuleTagFilter>? tagFilters;
  /// Vault ID
  final String? vaultId;

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
      'dataSourceFilters': ?dataSourceFilters == null ? null : pulumi.Input.encodeList<PolicyRuleDataSourceFilter, Map<String, dynamic>>(dataSourceFilters!, (value) => value.toMap()),
      'keepLatestSnapshots': ?keepLatestSnapshots,
      'replicationRegionId': ?replicationRegionId,
      'retention': ?retention,
      'retentionRules': ?retentionRules == null ? null : pulumi.Input.encodeList<PolicyRuleRetentionRule, Map<String, dynamic>>(retentionRules!, (value) => value.toMap()),
      'ruleId': ?ruleId,
      'ruleType': ruleType,
      'schedule': ?schedule,
      'tagFilters': ?tagFilters == null ? null : pulumi.Input.encodeList<PolicyRuleTagFilter, Map<String, dynamic>>(tagFilters!, (value) => value.toMap()),
      'vaultId': ?vaultId,
    };
  }

  factory PolicyRule.fromMap(Map<String, dynamic> map) {
    return PolicyRule(
      archiveDays: map['archiveDays'] == null ? null : map['archiveDays'] as int,
      backupType: map['backupType'] == null ? null : map['backupType'] as String,
      dataSourceFilters: map['dataSourceFilters'] == null ? null : pulumi.Input.decodeList<PolicyRuleDataSourceFilter>(map['dataSourceFilters'], (value) => PolicyRuleDataSourceFilter.fromMap((value as Map).cast<String, dynamic>())),
      keepLatestSnapshots: map['keepLatestSnapshots'] == null ? null : map['keepLatestSnapshots'] as int,
      replicationRegionId: map['replicationRegionId'] == null ? null : map['replicationRegionId'] as String,
      retention: map['retention'] == null ? null : map['retention'] as int,
      retentionRules: map['retentionRules'] == null ? null : pulumi.Input.decodeList<PolicyRuleRetentionRule>(map['retentionRules'], (value) => PolicyRuleRetentionRule.fromMap((value as Map).cast<String, dynamic>())),
      ruleId: map['ruleId'] == null ? null : map['ruleId'] as String,
      ruleType: map['ruleType'] as String,
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
      tagFilters: map['tagFilters'] == null ? null : pulumi.Input.decodeList<PolicyRuleTagFilter>(map['tagFilters'], (value) => PolicyRuleTagFilter.fromMap((value as Map).cast<String, dynamic>())),
      vaultId: map['vaultId'] == null ? null : map['vaultId'] as String,
    );
  }
}

