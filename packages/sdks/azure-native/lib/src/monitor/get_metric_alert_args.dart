// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_metric_alert_args_doc}
/// Arguments for getMetricAlert.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_metric_alert_args_doc}
class GetMetricAlertArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the rule.
  final pulumi.Input<String> ruleName;

  /// Creates a new [GetMetricAlertArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] The name of the rule.
  const GetMetricAlertArgs({
    required this.resourceGroupName,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
    };
  }

  factory GetMetricAlertArgs.fromMap(Map<String, dynamic> map) {
    return GetMetricAlertArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
    );
  }
}
