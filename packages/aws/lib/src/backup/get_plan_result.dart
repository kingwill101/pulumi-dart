// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_rule.dart';
import 'get_plan_scan_setting.dart';

/// Result data returned by getPlan.
class GetPlanResult {
  /// ARN of the backup plan.
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Display name of a backup plan.
  final String name;
  final String planId;
  final String region;

  /// Rules of a backup plan.
  final List<GetPlanRule> rules;

  /// Scanning configuration for the backup rule.
  final List<GetPlanScanSetting> scanSettings;

  /// Metadata that you can assign to help organize the plans you create.
  final Map<String, String> tags;

  /// Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan.
  final String version;

  /// Creates a new [GetPlanResult].
  /// [arn] ARN of the backup plan.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Display name of a backup plan.
  /// [planId] Required.
  /// [region] Required.
  /// [rules] Rules of a backup plan.
  /// [scanSettings] Scanning configuration for the backup rule.
  /// [tags] Metadata that you can assign to help organize the plans you create.
  /// [version] Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan.
  GetPlanResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.planId,
    required this.region,
    required this.rules,
    required this.scanSettings,
    required this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    map['planId'] = planId;
    map['region'] = region;
    map['rules'] = pulumi.Input.encodeList<GetPlanRule, Map<String, dynamic>>(
        rules, (value) => value.toMap());
    map['scanSettings'] =
        pulumi.Input.encodeList<GetPlanScanSetting, Map<String, dynamic>>(
            scanSettings, (value) => value.toMap());
    map['tags'] = tags;
    map['version'] = version;
    return map;
  }

  factory GetPlanResult.fromMap(Map<String, dynamic> map) {
    return GetPlanResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      planId: map['planId'] as String,
      region: map['region'] as String,
      rules: pulumi.Input.decodeList<GetPlanRule>(
          map['rules'],
          (value) =>
              GetPlanRule.fromMap((value as Map).cast<String, dynamic>())),
      scanSettings: pulumi.Input.decodeList<GetPlanScanSetting>(
          map['scanSettings'],
          (value) => GetPlanScanSetting.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
    );
  }
}
