// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alertsmanagement_get_alert_processing_rule_by_name_args_doc}
/// Arguments for getAlertProcessingRuleByName.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_get_alert_processing_rule_by_name_args_doc}
class GetAlertProcessingRuleByNameArgs {
  /// The name of the alert processing rule that needs to be fetched.
  final pulumi.Input<String> alertProcessingRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAlertProcessingRuleByNameArgs].
  /// [alertProcessingRuleName] The name of the alert processing rule that needs to be fetched.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAlertProcessingRuleByNameArgs({
    required this.alertProcessingRuleName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertProcessingRuleName': alertProcessingRuleName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAlertProcessingRuleByNameArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertProcessingRuleByNameArgs(
      alertProcessingRuleName: pulumi.Input.fromValue(map['alertProcessingRuleName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
