// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_plan_rule/get_plan_rule.dart';
import '../get_plan_scan_setting/get_plan_scan_setting.dart';

/// Result data returned by getPlan.
class GetPlanResult2 {
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

  GetPlanResult2({
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
    map['rules'] = Input.encodeList<GetPlanRule, Map<String, dynamic>>(
        rules, (value) => value.toMap());
    map['scanSettings'] =
        Input.encodeList<GetPlanScanSetting, Map<String, dynamic>>(
            scanSettings, (value) => value.toMap());
    map['tags'] = tags;
    map['version'] = version;
    return map;
  }

  factory GetPlanResult2.fromMap(Map<String, dynamic> map) {
    return GetPlanResult2(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      planId: map['planId'] as String,
      region: map['region'] as String,
      rules: Input.decodeList<GetPlanRule>(
          map['rules'],
          (value) =>
              GetPlanRule.fromMap((value as Map).cast<String, dynamic>())),
      scanSettings: Input.decodeList<GetPlanScanSetting>(
          map['scanSettings'],
          (value) => GetPlanScanSetting.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
    );
  }
}
