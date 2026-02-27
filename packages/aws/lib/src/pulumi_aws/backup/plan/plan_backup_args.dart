// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../plan_advanced_backup_setting/plan_advanced_backup_setting.dart';
import '../plan_rule/plan_rule.dart';
import '../plan_scan_setting/plan_scan_setting.dart';

/// The set of arguments for Plan.
class PlanBackupArgs {
  /// An object that specifies backup options for each resource type.
  final pulumi.Input<List<PlanAdvancedBackupSetting>>? advancedBackupSettings;

  /// The display name of a backup plan.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A rule object that specifies a scheduled task that is used to back up a selection of resources.
  final pulumi.Input<List<PlanRule>> rules;

  /// Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental. Detailed below.
  final pulumi.Input<List<PlanScanSetting>>? scanSettings;

  /// Metadata that you can assign to help organize the plans you create. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  PlanBackupArgs({
    this.advancedBackupSettings,
    this.name,
    this.region,
    required this.rules,
    this.scanSettings,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedBackupSettingsValue = advancedBackupSettings;
    if (advancedBackupSettingsValue != null) {
      map['advancedBackupSettings'] = pulumi.Input.mapOptionalInputValue<
              List<PlanAdvancedBackupSetting>, List<Map<String, dynamic>>>(
          advancedBackupSettingsValue,
          (value) => pulumi.Input.encodeList<PlanAdvancedBackupSetting,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['rules'] =
        pulumi.Input.mapInputValue<List<PlanRule>, List<Map<String, dynamic>>>(
            rules,
            (value) => pulumi.Input.encodeList<PlanRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final scanSettingsValue = scanSettings;
    if (scanSettingsValue != null) {
      map['scanSettings'] = pulumi.Input.mapOptionalInputValue<
              List<PlanScanSetting>, List<Map<String, dynamic>>>(
          scanSettingsValue,
          (value) =>
              pulumi.Input.encodeList<PlanScanSetting, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PlanBackupArgs.fromMap(Map<String, dynamic> map) {
    return PlanBackupArgs(
      advancedBackupSettings:
          pulumi.Input.asOptionalInput<List<PlanAdvancedBackupSetting>>(
              map['advancedBackupSettings']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rules: pulumi.Input.asInput<List<PlanRule>>(map['rules']),
      scanSettings: pulumi.Input.asOptionalInput<List<PlanScanSetting>>(
          map['scanSettings']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
