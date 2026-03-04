// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alertsmanagement_get_smart_detector_alert_rule_args_doc}
/// Arguments for getSmartDetectorAlertRule.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_get_smart_detector_alert_rule_args_doc}
class GetSmartDetectorAlertRuleArgs {
  /// The name of the alert rule.
  final pulumi.Input<String> alertRuleName;

  /// Indicates if Smart Detector should be expanded.
  final pulumi.Input<bool>? expandDetector;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSmartDetectorAlertRuleArgs].
  /// [alertRuleName] The name of the alert rule.
  /// [expandDetector] Indicates if Smart Detector should be expanded.
  /// [resourceGroupName] The name of the resource group.
  GetSmartDetectorAlertRuleArgs({
    required this.alertRuleName,
    this.expandDetector,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleName': alertRuleName,
      'expandDetector': ?expandDetector,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSmartDetectorAlertRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetSmartDetectorAlertRuleArgs(
      alertRuleName: pulumi.Input.fromValue(map['alertRuleName'] as String),
      expandDetector: (() {
        final guardedValue = map['expandDetector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
