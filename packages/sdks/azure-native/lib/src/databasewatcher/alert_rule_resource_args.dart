// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasewatcher_alert_rule_resource_args_doc}
/// The set of arguments for AlertRuleResource.
/// {@endtemplate}
/// {@macro pulumi_databasewatcher_alert_rule_resource_args_doc}
class AlertRuleResourceArgs {
  /// The resource ID of the alert rule resource.
  final pulumi.Input<String> alertRuleResourceId;
  /// The alert rule proxy resource name.
  final pulumi.Input<String>? alertRuleResourceName;
  /// The template ID associated with alert rule resource.
  final pulumi.Input<String> alertRuleTemplateId;
  /// The alert rule template version.
  final pulumi.Input<String> alertRuleTemplateVersion;
  /// The properties with which the alert rule resource was created.
  final pulumi.Input<String> createdWithProperties;
  /// The creation time of the alert rule resource.
  final pulumi.Input<String> creationTime;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The database watcher name.
  final pulumi.Input<String> watcherName;

  /// Creates a new [AlertRuleResourceArgs].
  /// [alertRuleResourceId] The resource ID of the alert rule resource.
  /// [alertRuleResourceName] The alert rule proxy resource name.
  /// [alertRuleTemplateId] The template ID associated with alert rule resource.
  /// [alertRuleTemplateVersion] The alert rule template version.
  /// [createdWithProperties] The properties with which the alert rule resource was created.
  /// [creationTime] The creation time of the alert rule resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [watcherName] The database watcher name.
  AlertRuleResourceArgs({
    required this.alertRuleResourceId,
    this.alertRuleResourceName,
    required this.alertRuleTemplateId,
    required this.alertRuleTemplateVersion,
    required this.createdWithProperties,
    required this.creationTime,
    required this.resourceGroupName,
    required this.watcherName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleResourceId': alertRuleResourceId,
      'alertRuleResourceName': ?alertRuleResourceName,
      'alertRuleTemplateId': alertRuleTemplateId,
      'alertRuleTemplateVersion': alertRuleTemplateVersion,
      'createdWithProperties': createdWithProperties,
      'creationTime': creationTime,
      'resourceGroupName': resourceGroupName,
      'watcherName': watcherName,
    };
  }

  factory AlertRuleResourceArgs.fromMap(Map<String, dynamic> map) {
    return AlertRuleResourceArgs(
      alertRuleResourceId: pulumi.Input.fromValue(map['alertRuleResourceId'] as String),
      alertRuleResourceName: (() { final guardedValue = map['alertRuleResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertRuleTemplateId: pulumi.Input.fromValue(map['alertRuleTemplateId'] as String),
      alertRuleTemplateVersion: pulumi.Input.fromValue(map['alertRuleTemplateVersion'] as String),
      createdWithProperties: pulumi.Input.fromValue(map['createdWithProperties'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      watcherName: pulumi.Input.fromValue(map['watcherName'] as String),
    );
  }
}

