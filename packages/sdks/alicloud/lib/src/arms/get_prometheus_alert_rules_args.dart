// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_prometheus_alert_rules_get_prometheus_alert_rules_args_doc}
/// Arguments for getPrometheusAlertRules.
/// {@endtemplate}
/// {@macro pulumi_arms_get_prometheus_alert_rules_get_prometheus_alert_rules_args_doc}
class GetPrometheusAlertRulesArgs {
  /// The ID of the cluster.
  final pulumi.Input<String> clusterId;

  /// A list of Prometheus Alert Rule IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? matchExpressions;

  /// A regex string to filter results by Prometheus Alert Rule name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The status of the resource. Valid values: `0`, `1`.
  final pulumi.Input<int>? status;

  /// The type of the alert rule.
  final pulumi.Input<String>? type;

  /// Creates a new [GetPrometheusAlertRulesArgs].
  /// [clusterId] The ID of the cluster.
  /// [ids] A list of Prometheus Alert Rule IDs.
  /// [matchExpressions] Optional.
  /// [nameRegex] A regex string to filter results by Prometheus Alert Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `0`, `1`.
  /// [type] The type of the alert rule.
  GetPrometheusAlertRulesArgs({
    required this.clusterId,
    this.ids,
    this.matchExpressions,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'ids': ?ids,
      'matchExpressions': ?matchExpressions,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'type': ?type,
    };
  }

  factory GetPrometheusAlertRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetPrometheusAlertRulesArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      matchExpressions: (() {
        final guardedValue = map['matchExpressions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
