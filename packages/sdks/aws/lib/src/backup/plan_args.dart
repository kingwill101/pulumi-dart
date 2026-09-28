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
  /// Object that specifies backup options for each resource type. Detailed below.
  final pulumi.Input<List<PlanAdvancedBackupSetting>?>? advancedBackupSettings;
  /// Display name of a backup plan.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Rule that specifies a scheduled task used to back up a selection of resources. Detailed below.
  final pulumi.Input<List<PlanRule>> rules;
  /// Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental. Detailed below.
  final pulumi.Input<List<PlanScanSetting>?>? scanSettings;
  /// Metadata that you can assign to help organize the plans you create. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [PlanArgs].
  /// [advancedBackupSettings] Object that specifies backup options for each resource type. Detailed below.
  /// [name] Display name of a backup plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] Rule that specifies a scheduled task used to back up a selection of resources. Detailed below.
  /// [scanSettings] Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental. Detailed below.
  /// [tags] Metadata that you can assign to help organize the plans you create. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const PlanArgs({
    this.advancedBackupSettings,
    this.name,
    this.region,
    required this.rules,
    this.scanSettings,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedBackupSettings': ?pulumi.Input.mapOptionalInputValue<List<PlanAdvancedBackupSetting>, List<Map<String, dynamic>>>(advancedBackupSettings, (value) => pulumi.Input.encodeList<PlanAdvancedBackupSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'rules': pulumi.Input.mapInputValue<List<PlanRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PlanRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scanSettings': ?pulumi.Input.mapOptionalInputValue<List<PlanScanSetting>, List<Map<String, dynamic>>>(scanSettings, (value) => pulumi.Input.encodeList<PlanScanSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory PlanArgs.fromMap(Map<String, dynamic> map) {
    return PlanArgs(
      advancedBackupSettings: (() { final guardedValue = map['advancedBackupSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanAdvancedBackupSetting>(guardedValue, (value) => PlanAdvancedBackupSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<PlanRule>(map['rules']!, (value) => PlanRule.fromMap((value as Map).cast<String, dynamic>()))),
      scanSettings: (() { final guardedValue = map['scanSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanScanSetting>(guardedValue, (value) => PlanScanSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
