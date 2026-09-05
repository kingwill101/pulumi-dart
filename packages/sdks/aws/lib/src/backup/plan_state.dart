// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_advanced_backup_setting.dart';
import 'plan_rule.dart';
import 'plan_scan_setting.dart';

/// Input properties used for looking up and filtering Plan resources.
class PlanState {
  /// An object that specifies backup options for each resource type.
  final pulumi.Input<List<PlanAdvancedBackupSetting>?>? advancedBackupSettings;
  /// The ARN of the backup plan.
  final pulumi.Input<String?>? arn;
  /// The display name of a backup plan.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A rule object that specifies a scheduled task that is used to back up a selection of resources.
  final pulumi.Input<List<PlanRule>?>? rules;
  /// Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental. Detailed below.
  final pulumi.Input<List<PlanScanSetting>?>? scanSettings;
  /// Metadata that you can assign to help organize the plans you create. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan.
  final pulumi.Input<String?>? version;

  /// Creates a new [PlanState].
  /// [advancedBackupSettings] An object that specifies backup options for each resource type.
  /// [arn] The ARN of the backup plan.
  /// [name] The display name of a backup plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] A rule object that specifies a scheduled task that is used to back up a selection of resources.
  /// [scanSettings] Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental. Detailed below.
  /// [tags] Metadata that you can assign to help organize the plans you create. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [version] Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan.
  const PlanState({
    this.advancedBackupSettings,
    this.arn,
    this.name,
    this.region,
    this.rules,
    this.scanSettings,
    this.tags,
    this.tagsAll,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedBackupSettings': ?pulumi.Input.mapOptionalInputValue<List<PlanAdvancedBackupSetting>, List<Map<String, dynamic>>>(advancedBackupSettings, (value) => pulumi.Input.encodeList<PlanAdvancedBackupSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'name': ?name,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PlanRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PlanRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scanSettings': ?pulumi.Input.mapOptionalInputValue<List<PlanScanSetting>, List<Map<String, dynamic>>>(scanSettings, (value) => pulumi.Input.encodeList<PlanScanSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
    };
  }

  factory PlanState.fromMap(Map<String, dynamic> map) {
    return PlanState(
      advancedBackupSettings: (() { final guardedValue = map['advancedBackupSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanAdvancedBackupSetting>(guardedValue, (value) => PlanAdvancedBackupSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanRule>(guardedValue, (value) => PlanRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scanSettings: (() { final guardedValue = map['scanSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanScanSetting>(guardedValue, (value) => PlanScanSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
