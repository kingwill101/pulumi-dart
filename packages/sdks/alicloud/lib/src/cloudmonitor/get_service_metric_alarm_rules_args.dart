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
  GetServiceMetricAlarmRulesArgs({
    pulumi.Output<String>? dimensions,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? metricName,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? ruleName,
    pulumi.Output<bool>? status,
  }) :
      dimensions = pulumi.Input.asOptionalInput<String>(dimensions),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      metricName = pulumi.Input.asOptionalInput<String>(metricName),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      status = pulumi.Input.asOptionalInput<bool>(status);

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
      dimensions: map['dimensions'] == null ? null : pulumi.Output.create<String>(map['dimensions'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      metricName: map['metricName'] == null ? null : pulumi.Output.create<String>(map['metricName'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<bool>(map['status'] as bool),
    );
  }
}

