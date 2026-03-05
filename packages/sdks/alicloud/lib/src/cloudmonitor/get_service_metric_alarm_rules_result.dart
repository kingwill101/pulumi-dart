// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_metric_alarm_rules_rule.dart';

/// Result data returned by getServiceMetricAlarmRules.
class GetServiceMetricAlarmRulesResult {
  /// The dimensions of the alert rule.
  final String? dimensions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The metric that is used to monitor the cloud service.
  final String? metricName;
  /// The namespace of the cloud service.
  final String? namespace;
  final String? outputFile;
  /// The name of the alert rule.
  final String? ruleName;
  /// A list of Hybrid Double Writes. Each element contains the following attributes:
  final List<GetServiceMetricAlarmRulesRule> rules;
  /// Indicates whether the alert rule is enabled.
  final bool? status;

  /// Creates a new [GetServiceMetricAlarmRulesResult].
  /// [dimensions] The dimensions of the alert rule.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [metricName] The metric that is used to monitor the cloud service.
  /// [namespace] The namespace of the cloud service.
  /// [outputFile] Optional.
  /// [ruleName] The name of the alert rule.
  /// [rules] A list of Hybrid Double Writes. Each element contains the following attributes:
  /// [status] Indicates whether the alert rule is enabled.
  GetServiceMetricAlarmRulesResult({
    this.dimensions,
    required this.id,
    required this.ids,
    this.metricName,
    this.namespace,
    this.outputFile,
    this.ruleName,
    required this.rules,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions,
      'id': id,
      'ids': ids,
      'metricName': ?metricName,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
      'ruleName': ?ruleName,
      'rules': pulumi.Input.encodeList<GetServiceMetricAlarmRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetServiceMetricAlarmRulesResult.fromMap(Map<String, dynamic> map) {
    return GetServiceMetricAlarmRulesResult(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: pulumi.Input.decodeList<GetServiceMetricAlarmRulesRule>(map['rules']!, (value) => GetServiceMetricAlarmRulesRule.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

