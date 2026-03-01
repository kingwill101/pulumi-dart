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
    required String alertRuleName,
    bool? expandDetector,
    required String resourceGroupName,
  }) :
      alertRuleName = pulumi.Input.asInput<String>(alertRuleName),
      expandDetector = pulumi.Input.asOptionalInput<bool>(expandDetector),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleName': alertRuleName,
      'expandDetector': ?expandDetector,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSmartDetectorAlertRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetSmartDetectorAlertRuleArgs(
      alertRuleName: map['alertRuleName'] as String,
      expandDetector: map['expandDetector'] == null ? null : map['expandDetector'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

