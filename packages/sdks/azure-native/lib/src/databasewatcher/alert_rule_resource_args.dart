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
    required pulumi.Output<String> alertRuleResourceId,
    pulumi.Output<String>? alertRuleResourceName,
    required pulumi.Output<String> alertRuleTemplateId,
    required pulumi.Output<String> alertRuleTemplateVersion,
    required pulumi.Output<String> createdWithProperties,
    required pulumi.Output<String> creationTime,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> watcherName,
  }) :
      alertRuleResourceId = pulumi.Input.asInput<String>(alertRuleResourceId),
      alertRuleResourceName = pulumi.Input.asOptionalInput<String>(alertRuleResourceName),
      alertRuleTemplateId = pulumi.Input.asInput<String>(alertRuleTemplateId),
      alertRuleTemplateVersion = pulumi.Input.asInput<String>(alertRuleTemplateVersion),
      createdWithProperties = pulumi.Input.asInput<String>(createdWithProperties),
      creationTime = pulumi.Input.asInput<String>(creationTime),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      watcherName = pulumi.Input.asInput<String>(watcherName);

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
      alertRuleResourceId: pulumi.Output.create<String>(map['alertRuleResourceId'] as String),
      alertRuleResourceName: map['alertRuleResourceName'] == null ? null : pulumi.Output.create<String>(map['alertRuleResourceName'] as String),
      alertRuleTemplateId: pulumi.Output.create<String>(map['alertRuleTemplateId'] as String),
      alertRuleTemplateVersion: pulumi.Output.create<String>(map['alertRuleTemplateVersion'] as String),
      createdWithProperties: pulumi.Output.create<String>(map['createdWithProperties'] as String),
      creationTime: pulumi.Output.create<String>(map['creationTime'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      watcherName: pulumi.Output.create<String>(map['watcherName'] as String),
    );
  }
}

