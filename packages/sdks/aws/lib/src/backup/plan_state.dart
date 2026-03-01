// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_advanced_backup_setting.dart';
import 'plan_rule.dart';
import 'plan_scan_setting.dart';

/// Input properties used for looking up and filtering Plan resources.
class PlanState {
  /// An object that specifies backup options for each resource type.
  final pulumi.Input<List<PlanAdvancedBackupSetting>>? advancedBackupSettings;
  /// The ARN of the backup plan.
  final pulumi.Input<String>? arn;
  /// The display name of a backup plan.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A rule object that specifies a scheduled task that is used to back up a selection of resources.
  final pulumi.Input<List<PlanRule>>? rules;
  /// Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental. Detailed below.
  final pulumi.Input<List<PlanScanSetting>>? scanSettings;
  /// Metadata that you can assign to help organize the plans you create. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan.
  final pulumi.Input<String>? version;

  /// Creates a new [PlanState].
  /// [advancedBackupSettings] An object that specifies backup options for each resource type.
  /// [arn] The ARN of the backup plan.
  /// [name] The display name of a backup plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] A rule object that specifies a scheduled task that is used to back up a selection of resources.
  /// [scanSettings] Block for scanning configuration for the backup rule and includes the malware scanner, and scan mode of either full or incremental. Detailed below.
  /// [tags] Metadata that you can assign to help organize the plans you create. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [version] Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan.
  PlanState({
    pulumi.Output<List<PlanAdvancedBackupSetting>>? advancedBackupSettings,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<PlanRule>>? rules,
    pulumi.Output<List<PlanScanSetting>>? scanSettings,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? version,
  }) :
      advancedBackupSettings = pulumi.Input.asOptionalInput<List<PlanAdvancedBackupSetting>>(advancedBackupSettings),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asOptionalInput<List<PlanRule>>(rules),
      scanSettings = pulumi.Input.asOptionalInput<List<PlanScanSetting>>(scanSettings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      advancedBackupSettings: map['advancedBackupSettings'] == null ? null : pulumi.Output.create<List<PlanAdvancedBackupSetting>>(pulumi.Input.decodeList<PlanAdvancedBackupSetting>(map['advancedBackupSettings'], (value) => PlanAdvancedBackupSetting.fromMap((value as Map).cast<String, dynamic>()))),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<PlanRule>>(pulumi.Input.decodeList<PlanRule>(map['rules'], (value) => PlanRule.fromMap((value as Map).cast<String, dynamic>()))),
      scanSettings: map['scanSettings'] == null ? null : pulumi.Output.create<List<PlanScanSetting>>(pulumi.Input.decodeList<PlanScanSetting>(map['scanSettings'], (value) => PlanScanSetting.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

