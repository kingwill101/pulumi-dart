// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudmonitor_get_service_metric_alarm_rules_get_service_metric_alarm_rules_args_doc}
/// Arguments for getServiceMetricAlarmRules.
/// {@endtemplate}
/// {@macro pulumi_cloudmonitor_get_service_metric_alarm_rules_get_service_metric_alarm_rules_args_doc}
class GetServiceMetricAlarmRulesArgs {
  /// The monitoring dimensions of the specified resource.
  final pulumi.Input<String>? dimensions;
  /// A list of Metric Alarm Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of the metric.
  final pulumi.Input<String>? metricName;
  /// The namespace of the cloud service.
  final pulumi.Input<String>? namespace;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the alert rule.
  final pulumi.Input<String>? ruleName;
  /// Specifies whether to query enabled or disabled alert rules. Valid values: `true`, `false`.
  final pulumi.Input<bool>? status;

  /// Creates a new [GetServiceMetricAlarmRulesArgs].
  /// [dimensions] The monitoring dimensions of the specified resource.
  /// [ids] A list of Metric Alarm Rule IDs.
  /// [metricName] The name of the metric.
  /// [namespace] The namespace of the cloud service.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [ruleName] The name of the alert rule.
  /// [status] Specifies whether to query enabled or disabled alert rules. Valid values: `true`, `false`.
  const GetServiceMetricAlarmRulesArgs({
    this.dimensions,
    this.ids,
    this.metricName,
    this.namespace,
    this.outputFile,
    this.ruleName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions,
      'ids': ?ids,
      'metricName': ?metricName,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
      'ruleName': ?ruleName,
      'status': ?status,
    };
  }

  factory GetServiceMetricAlarmRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceMetricAlarmRulesArgs(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

