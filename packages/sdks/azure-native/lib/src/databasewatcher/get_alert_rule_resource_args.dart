// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasewatcher_get_alert_rule_resource_args_doc}
/// Arguments for getAlertRuleResource.
/// {@endtemplate}
/// {@macro pulumi_databasewatcher_get_alert_rule_resource_args_doc}
class GetAlertRuleResourceArgs {
  /// The alert rule proxy resource name.
  final pulumi.Input<String> alertRuleResourceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The database watcher name.
  final pulumi.Input<String> watcherName;

  /// Creates a new [GetAlertRuleResourceArgs].
  /// [alertRuleResourceName] The alert rule proxy resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [watcherName] The database watcher name.
  GetAlertRuleResourceArgs({
    required this.alertRuleResourceName,
    required this.resourceGroupName,
    required this.watcherName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleResourceName': alertRuleResourceName,
      'resourceGroupName': resourceGroupName,
      'watcherName': watcherName,
    };
  }

  factory GetAlertRuleResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleResourceArgs(
      alertRuleResourceName: pulumi.Input.fromValue(
        map['alertRuleResourceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      watcherName: pulumi.Input.fromValue(map['watcherName'] as String),
    );
  }
}
