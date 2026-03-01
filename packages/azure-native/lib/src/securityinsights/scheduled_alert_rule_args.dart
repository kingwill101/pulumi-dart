// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_details_override.dart';
import 'entity_mapping.dart';
import 'event_grouping_settings.dart';
import 'incident_configuration.dart';
import 'trigger_operator.dart';

/// {@template pulumi_securityinsights_scheduled_alert_rule_args_doc}
/// The set of arguments for ScheduledAlertRule.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_scheduled_alert_rule_args_doc}
class ScheduledAlertRuleArgs {
  /// The alert details override settings
  final pulumi.Input<AlertDetailsOverride>? alertDetailsOverride;
  /// The Name of the alert rule template used to create this rule.
  final pulumi.Input<String>? alertRuleTemplateName;
  /// Dictionary of string key-value pairs of columns to be attached to the alert
  final pulumi.Input<Map<String, String>>? customDetails;
  /// The description of the alert rule.
  final pulumi.Input<String>? description;
  /// The display name for alerts created by this alert rule.
  final pulumi.Input<String> displayName;
  /// Determines whether this alert rule is enabled or disabled.
  final pulumi.Input<bool> enabled;
  /// Array of the entity mappings of the alert rule
  final pulumi.Input<List<EntityMapping>>? entityMappings;
  /// The event grouping settings.
  final pulumi.Input<EventGroupingSettings>? eventGroupingSettings;
  /// The settings of the incidents that created from alerts triggered by this analytics rule
  final pulumi.Input<IncidentConfiguration>? incidentConfiguration;
  /// The kind of the alert rule
  /// Expected value is 'Scheduled'.
  final pulumi.Input<String> kind;
  /// The query that creates alerts for this rule.
  final pulumi.Input<String> query;
  /// The frequency (in ISO 8601 duration format) for this alert rule to run.
  final pulumi.Input<String> queryFrequency;
  /// The period (in ISO 8601 duration format) that this alert rule looks at.
  final pulumi.Input<String> queryPeriod;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Alert rule ID
  final pulumi.Input<String>? ruleId;
  /// The severity for alerts created by this alert rule.
  final pulumi.Input<String> severity;
  /// The suppression (in ISO 8601 duration format) to wait since last time this alert rule been triggered.
  final pulumi.Input<String> suppressionDuration;
  /// Determines whether the suppression for this alert rule is enabled or disabled.
  final pulumi.Input<bool> suppressionEnabled;
  /// The tactics of the alert rule
  final pulumi.Input<List<String>>? tactics;
  /// The techniques of the alert rule
  final pulumi.Input<List<String>>? techniques;
  /// The version of the alert rule template used to create this rule - in format <a.b.c>, where all are numbers, for example 0 <1.0.2>
  final pulumi.Input<String>? templateVersion;
  /// The operation against the threshold that triggers alert rule.
  final pulumi.Input<TriggerOperator> triggerOperator;
  /// The threshold triggers this alert rule.
  final pulumi.Input<int> triggerThreshold;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ScheduledAlertRuleArgs].
  /// [alertDetailsOverride] The alert details override settings
  /// [alertRuleTemplateName] The Name of the alert rule template used to create this rule.
  /// [customDetails] Dictionary of string key-value pairs of columns to be attached to the alert
  /// [description] The description of the alert rule.
  /// [displayName] The display name for alerts created by this alert rule.
  /// [enabled] Determines whether this alert rule is enabled or disabled.
  /// [entityMappings] Array of the entity mappings of the alert rule
  /// [eventGroupingSettings] The event grouping settings.
  /// [incidentConfiguration] The settings of the incidents that created from alerts triggered by this analytics rule
  /// [kind] The kind of the alert rule
  /// [query] The query that creates alerts for this rule.
  /// [queryFrequency] The frequency (in ISO 8601 duration format) for this alert rule to run.
  /// [queryPeriod] The period (in ISO 8601 duration format) that this alert rule looks at.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleId] Alert rule ID
  /// [severity] The severity for alerts created by this alert rule.
  /// [suppressionDuration] The suppression (in ISO 8601 duration format) to wait since last time this alert rule been triggered.
  /// [suppressionEnabled] Determines whether the suppression for this alert rule is enabled or disabled.
  /// [tactics] The tactics of the alert rule
  /// [techniques] The techniques of the alert rule
  /// [templateVersion] The version of the alert rule template used to create this rule - in format <a.b.c>, where all are numbers, for example 0 <1.0.2>
  /// [triggerOperator] The operation against the threshold that triggers alert rule.
  /// [triggerThreshold] The threshold triggers this alert rule.
  /// [workspaceName] The name of the workspace.
  ScheduledAlertRuleArgs({
    AlertDetailsOverride? alertDetailsOverride,
    String? alertRuleTemplateName,
    Map<String, String>? customDetails,
    String? description,
    required String displayName,
    required bool enabled,
    List<EntityMapping>? entityMappings,
    EventGroupingSettings? eventGroupingSettings,
    IncidentConfiguration? incidentConfiguration,
    required String kind,
    required String query,
    required String queryFrequency,
    required String queryPeriod,
    required String resourceGroupName,
    String? ruleId,
    required String severity,
    required String suppressionDuration,
    required bool suppressionEnabled,
    List<String>? tactics,
    List<String>? techniques,
    String? templateVersion,
    required TriggerOperator triggerOperator,
    required int triggerThreshold,
    required String workspaceName,
  }) :
      alertDetailsOverride = pulumi.Input.asOptionalInput<AlertDetailsOverride>(alertDetailsOverride),
      alertRuleTemplateName = pulumi.Input.asOptionalInput<String>(alertRuleTemplateName),
      customDetails = pulumi.Input.asOptionalInput<Map<String, String>>(customDetails),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      enabled = pulumi.Input.asInput<bool>(enabled),
      entityMappings = pulumi.Input.asOptionalInput<List<EntityMapping>>(entityMappings),
      eventGroupingSettings = pulumi.Input.asOptionalInput<EventGroupingSettings>(eventGroupingSettings),
      incidentConfiguration = pulumi.Input.asOptionalInput<IncidentConfiguration>(incidentConfiguration),
      kind = pulumi.Input.asInput<String>(kind),
      query = pulumi.Input.asInput<String>(query),
      queryFrequency = pulumi.Input.asInput<String>(queryFrequency),
      queryPeriod = pulumi.Input.asInput<String>(queryPeriod),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleId = pulumi.Input.asOptionalInput<String>(ruleId),
      severity = pulumi.Input.asInput<String>(severity),
      suppressionDuration = pulumi.Input.asInput<String>(suppressionDuration),
      suppressionEnabled = pulumi.Input.asInput<bool>(suppressionEnabled),
      tactics = pulumi.Input.asOptionalInput<List<String>>(tactics),
      techniques = pulumi.Input.asOptionalInput<List<String>>(techniques),
      templateVersion = pulumi.Input.asOptionalInput<String>(templateVersion),
      triggerOperator = pulumi.Input.asInput<TriggerOperator>(triggerOperator),
      triggerThreshold = pulumi.Input.asInput<int>(triggerThreshold),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertDetailsOverride': ?pulumi.Input.mapOptionalInputValue<AlertDetailsOverride, Map<String, dynamic>>(alertDetailsOverride, (value) => value.toMap()),
      'alertRuleTemplateName': ?alertRuleTemplateName,
      'customDetails': ?customDetails,
      'description': ?description,
      'displayName': displayName,
      'enabled': enabled,
      'entityMappings': ?pulumi.Input.mapOptionalInputValue<List<EntityMapping>, List<Map<String, dynamic>>>(entityMappings, (value) => pulumi.Input.encodeList<EntityMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventGroupingSettings': ?pulumi.Input.mapOptionalInputValue<EventGroupingSettings, Map<String, dynamic>>(eventGroupingSettings, (value) => value.toMap()),
      'incidentConfiguration': ?pulumi.Input.mapOptionalInputValue<IncidentConfiguration, Map<String, dynamic>>(incidentConfiguration, (value) => value.toMap()),
      'kind': kind,
      'query': query,
      'queryFrequency': queryFrequency,
      'queryPeriod': queryPeriod,
      'resourceGroupName': resourceGroupName,
      'ruleId': ?ruleId,
      'severity': severity,
      'suppressionDuration': suppressionDuration,
      'suppressionEnabled': suppressionEnabled,
      'tactics': ?tactics,
      'techniques': ?techniques,
      'templateVersion': ?templateVersion,
      'triggerOperator': pulumi.Input.mapInputValue<TriggerOperator, String>(triggerOperator, (value) => value.value),
      'triggerThreshold': triggerThreshold,
      'workspaceName': workspaceName,
    };
  }

  factory ScheduledAlertRuleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledAlertRuleArgs(
      alertDetailsOverride: map['alertDetailsOverride'] == null ? null : AlertDetailsOverride.fromMap((map['alertDetailsOverride'] as Map).cast<String, dynamic>()),
      alertRuleTemplateName: map['alertRuleTemplateName'] == null ? null : map['alertRuleTemplateName'] as String,
      customDetails: map['customDetails'] == null ? null : (map['customDetails'] as Map).cast<String, String>(),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      enabled: map['enabled'] as bool,
      entityMappings: map['entityMappings'] == null ? null : pulumi.Input.decodeList<EntityMapping>(map['entityMappings'], (value) => EntityMapping.fromMap((value as Map).cast<String, dynamic>())),
      eventGroupingSettings: map['eventGroupingSettings'] == null ? null : EventGroupingSettings.fromMap((map['eventGroupingSettings'] as Map).cast<String, dynamic>()),
      incidentConfiguration: map['incidentConfiguration'] == null ? null : IncidentConfiguration.fromMap((map['incidentConfiguration'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      query: map['query'] as String,
      queryFrequency: map['queryFrequency'] as String,
      queryPeriod: map['queryPeriod'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleId: map['ruleId'] == null ? null : map['ruleId'] as String,
      severity: map['severity'] as String,
      suppressionDuration: map['suppressionDuration'] as String,
      suppressionEnabled: map['suppressionEnabled'] as bool,
      tactics: map['tactics'] == null ? null : (map['tactics'] as List).cast<String>(),
      techniques: map['techniques'] == null ? null : (map['techniques'] as List).cast<String>(),
      templateVersion: map['templateVersion'] == null ? null : map['templateVersion'] as String,
      triggerOperator: TriggerOperator.fromValue(map['triggerOperator'] as String),
      triggerThreshold: map['triggerThreshold'] as int,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

