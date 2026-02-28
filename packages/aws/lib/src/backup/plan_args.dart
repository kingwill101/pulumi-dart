// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_advanced_backup_setting.dart';
import 'plan_rule.dart';
import 'plan_scan_setting.dart';

/// {@template pulumi_backup_plan_plan_args_doc}
/// The set of arguments for Plan.
/// {@endtemplate}
/// {@macro pulumi_backup_plan_plan_args_doc}
class PlanArgs {
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

  /// Creates a new [PlanArgs].
  /// [advancedBackupSettings] An object that specifies backup options for each resource type.
  /// [name] The display name of a backup plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] A rule object that specifies a scheduled task that is used to back up a selection of resources.
  /// [scanSettings] Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental. Detailed below.
  /// [tags] Metadata that you can assign to help organize the plans you create. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  PlanArgs({
    List<PlanAdvancedBackupSetting>? advancedBackupSettings,
    String? name,
    String? region,
    required List<PlanRule> rules,
    List<PlanScanSetting>? scanSettings,
    Map<String, String>? tags,
  })  : advancedBackupSettings =
            pulumi.Input.asOptionalInput<List<PlanAdvancedBackupSetting>>(
                advancedBackupSettings),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        rules = pulumi.Input.asInput<List<PlanRule>>(rules),
        scanSettings =
            pulumi.Input.asOptionalInput<List<PlanScanSetting>>(scanSettings),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory PlanArgs.fromMap(Map<String, dynamic> map) {
    return PlanArgs(
      advancedBackupSettings: map['advancedBackupSettings'] == null
          ? null
          : pulumi.Input.decodeList<PlanAdvancedBackupSetting>(
              map['advancedBackupSettings'],
              (value) => PlanAdvancedBackupSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rules: pulumi.Input.decodeList<PlanRule>(map['rules'],
          (value) => PlanRule.fromMap((value as Map).cast<String, dynamic>())),
      scanSettings: map['scanSettings'] == null
          ? null
          : pulumi.Input.decodeList<PlanScanSetting>(
              map['scanSettings'],
              (value) => PlanScanSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
