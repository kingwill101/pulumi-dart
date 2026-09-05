// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_plan_rule.dart';
import 'get_plan_scan_setting.dart';

/// Result data returned by getPlan.
class GetPlanResult {
  /// ARN of the backup plan.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Display name of a backup plan.
  final String? name;
  final String? planId;
  final String? region;
  /// Rules of a backup plan.
  final List<GetPlanRule>? rules;
  /// Scanning configuration for the backup rule.
  final List<GetPlanScanSetting>? scanSettings;
  /// Metadata that you can assign to help organize the plans you create.
  final Map<String, String>? tags;
  /// Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan.
  final String? version;

  /// Creates a new [GetPlanResult].
  /// [arn] ARN of the backup plan.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Display name of a backup plan.
  /// [planId] Optional.
  /// [region] Optional.
  /// [rules] Rules of a backup plan.
  /// [scanSettings] Scanning configuration for the backup rule.
  /// [tags] Metadata that you can assign to help organize the plans you create.
  /// [version] Unique, randomly generated, Unicode, UTF-8 encoded string that serves as the version ID of the backup plan.
  const GetPlanResult({
    this.arn,
    this.id,
    this.name,
    this.planId,
    this.region,
    this.rules,
    this.scanSettings,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'planId': ?planId,
      'region': ?region,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPlanRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scanSettings': ?(() { final guardedValue = scanSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPlanScanSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory GetPlanResult.fromMap(Map<String, dynamic> map) {
    return GetPlanResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      planId: (() { final guardedValue = map['planId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPlanRule>(guardedValue, (value) => GetPlanRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      scanSettings: (() { final guardedValue = map['scanSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPlanScanSetting>(guardedValue, (value) => GetPlanScanSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
