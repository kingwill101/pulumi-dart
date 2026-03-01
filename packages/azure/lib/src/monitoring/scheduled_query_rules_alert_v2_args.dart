// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_alert_v2_action.dart';
import 'scheduled_query_rules_alert_v2_criteria.dart';
import 'scheduled_query_rules_alert_v2_identity.dart';

/// {@template pulumi_monitoring_scheduled_query_rules_alert_v2_scheduled_query_rules_alert_v2_args_doc}
/// The set of arguments for ScheduledQueryRulesAlertV2.
/// {@endtemplate}
/// {@macro pulumi_monitoring_scheduled_query_rules_alert_v2_scheduled_query_rules_alert_v2_args_doc}
class ScheduledQueryRulesAlertV2Args {
  /// An `action` block as defined below.
  final pulumi.Input<ScheduledQueryRulesAlertV2Action>? action;
  /// Specifies the flag that indicates whether the alert should be automatically resolved or not. Value should be `true` or `false`. The default is `false`.
  final pulumi.Input<bool>? autoMitigationEnabled;
  /// A `criteria` block as defined below.
  final pulumi.Input<List<ScheduledQueryRulesAlertV2Criteria>> criterias;
  /// Specifies the description of the scheduled query rule.
  final pulumi.Input<String>? description;
  /// Specifies the display name of the alert rule.
  final pulumi.Input<String>? displayName;
  /// Specifies the flag which indicates whether this scheduled query rule is enabled. Value should be `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// How often the scheduled query rule is evaluated, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`.
  ///
  /// > **Note:** `evaluation_frequency` cannot be greater than the query look back which is `window_duration`*`number_of_evaluation_periods`.
  ///
  /// > **Note:** `evaluation_frequency` cannot be greater than the `mute_actions_after_alert_duration`.
  final pulumi.Input<String> evaluationFrequency;
  /// An `identity` block as defined below.
  final pulumi.Input<ScheduledQueryRulesAlertV2Identity>? identity;
  /// Specifies the Azure Region where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Mute actions for the chosen period of time in ISO 8601 duration format after the alert is fired. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`.
  ///
  /// > **Note:** `auto_mitigation_enabled` and `mute_actions_after_alert_duration` are mutually exclusive and cannot both be set.
  final pulumi.Input<String>? muteActionsAfterAlertDuration;
  /// Specifies the name which should be used for this Monitor Scheduled Query Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Set this if the alert evaluation period is different from the query time range. If not specified, the value is `window_duration`*`number_of_evaluation_periods`. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT20M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`.
  ///
  /// > **Note:** `query_time_range_override` cannot be less than the query look back which is `window_duration`*`number_of_evaluation_periods`.
  final pulumi.Input<String>? queryTimeRangeOverride;
  /// Specifies the name of the Resource Group where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the list of resource IDs that this scheduled query rule is scoped to. Changing this forces a new resource to be created. Currently, the API supports exactly 1 resource ID in the scopes list.
  final pulumi.Input<String> scopes;
  /// Severity of the alert. Should be an integer between 0 and 4. Value of 0 is severest.
  final pulumi.Input<int> severity;
  /// Specifies the flag which indicates whether the provided query should be validated or not. The default is false.
  final pulumi.Input<bool>? skipQueryValidation;
  /// A mapping of tags which should be assigned to the Monitor Scheduled Query Rule.
  final pulumi.Input<Map<String, String>>? tags;
  /// List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is `Microsoft.Compute/virtualMachines`, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria.
  final pulumi.Input<List<String>>? targetResourceTypes;
  /// Specifies the period of time in ISO 8601 duration format on which the Scheduled Query Rule will be executed (bin size). If `evaluation_frequency` is `PT1M`, possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, and `PT6H`. Otherwise, possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`, and `P2D`.
  final pulumi.Input<String> windowDuration;
  /// Specifies the flag which indicates whether this scheduled query rule check if storage is configured. Value should be `true` or `false`. The default is `false`.
  final pulumi.Input<bool>? workspaceAlertsStorageEnabled;

  /// Creates a new [ScheduledQueryRulesAlertV2Args].
  /// [action] An `action` block as defined below.
  /// [autoMitigationEnabled] Specifies the flag that indicates whether the alert should be automatically resolved or not. Value should be `true` or `false`. The default is `false`.
  /// [criterias] A `criteria` block as defined below.
  /// [description] Specifies the description of the scheduled query rule.
  /// [displayName] Specifies the display name of the alert rule.
  /// [enabled] Specifies the flag which indicates whether this scheduled query rule is enabled. Value should be `true` or `false`. Defaults to `true`.
  /// [evaluationFrequency] How often the scheduled query rule is evaluated, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`.
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the Azure Region where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
  /// [muteActionsAfterAlertDuration] Mute actions for the chosen period of time in ISO 8601 duration format after the alert is fired. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`.
  /// [name] Specifies the name which should be used for this Monitor Scheduled Query Rule. Changing this forces a new resource to be created.
  /// [queryTimeRangeOverride] Set this if the alert evaluation period is different from the query time range. If not specified, the value is `window_duration`*`number_of_evaluation_periods`. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT20M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created.
  /// [scopes] Specifies the list of resource IDs that this scheduled query rule is scoped to. Changing this forces a new resource to be created. Currently, the API supports exactly 1 resource ID in the scopes list.
  /// [severity] Severity of the alert. Should be an integer between 0 and 4. Value of 0 is severest.
  /// [skipQueryValidation] Specifies the flag which indicates whether the provided query should be validated or not. The default is false.
  /// [tags] A mapping of tags which should be assigned to the Monitor Scheduled Query Rule.
  /// [targetResourceTypes] List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is `Microsoft.Compute/virtualMachines`, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria.
  /// [windowDuration] Specifies the period of time in ISO 8601 duration format on which the Scheduled Query Rule will be executed (bin size). If `evaluation_frequency` is `PT1M`, possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, and `PT6H`. Otherwise, possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`, and `P2D`.
  /// [workspaceAlertsStorageEnabled] Specifies the flag which indicates whether this scheduled query rule check if storage is configured. Value should be `true` or `false`. The default is `false`.
  ScheduledQueryRulesAlertV2Args({
    ScheduledQueryRulesAlertV2Action? action,
    bool? autoMitigationEnabled,
    required List<ScheduledQueryRulesAlertV2Criteria> criterias,
    String? description,
    String? displayName,
    bool? enabled,
    required String evaluationFrequency,
    ScheduledQueryRulesAlertV2Identity? identity,
    String? location,
    String? muteActionsAfterAlertDuration,
    String? name,
    String? queryTimeRangeOverride,
    required String resourceGroupName,
    required String scopes,
    required int severity,
    bool? skipQueryValidation,
    Map<String, String>? tags,
    List<String>? targetResourceTypes,
    required String windowDuration,
    bool? workspaceAlertsStorageEnabled,
  }) :
      action = pulumi.Input.asOptionalInput<ScheduledQueryRulesAlertV2Action>(action),
      autoMitigationEnabled = pulumi.Input.asOptionalInput<bool>(autoMitigationEnabled),
      criterias = pulumi.Input.asInput<List<ScheduledQueryRulesAlertV2Criteria>>(criterias),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      evaluationFrequency = pulumi.Input.asInput<String>(evaluationFrequency),
      identity = pulumi.Input.asOptionalInput<ScheduledQueryRulesAlertV2Identity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      muteActionsAfterAlertDuration = pulumi.Input.asOptionalInput<String>(muteActionsAfterAlertDuration),
      name = pulumi.Input.asOptionalInput<String>(name),
      queryTimeRangeOverride = pulumi.Input.asOptionalInput<String>(queryTimeRangeOverride),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scopes = pulumi.Input.asInput<String>(scopes),
      severity = pulumi.Input.asInput<int>(severity),
      skipQueryValidation = pulumi.Input.asOptionalInput<bool>(skipQueryValidation),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetResourceTypes = pulumi.Input.asOptionalInput<List<String>>(targetResourceTypes),
      windowDuration = pulumi.Input.asInput<String>(windowDuration),
      workspaceAlertsStorageEnabled = pulumi.Input.asOptionalInput<bool>(workspaceAlertsStorageEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<ScheduledQueryRulesAlertV2Action, Map<String, dynamic>>(action, (value) => value.toMap()),
      'autoMitigationEnabled': ?autoMitigationEnabled,
      'criterias': pulumi.Input.mapInputValue<List<ScheduledQueryRulesAlertV2Criteria>, List<Map<String, dynamic>>>(criterias, (value) => pulumi.Input.encodeList<ScheduledQueryRulesAlertV2Criteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'evaluationFrequency': evaluationFrequency,
      'identity': ?pulumi.Input.mapOptionalInputValue<ScheduledQueryRulesAlertV2Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'muteActionsAfterAlertDuration': ?muteActionsAfterAlertDuration,
      'name': ?name,
      'queryTimeRangeOverride': ?queryTimeRangeOverride,
      'resourceGroupName': resourceGroupName,
      'scopes': scopes,
      'severity': severity,
      'skipQueryValidation': ?skipQueryValidation,
      'tags': ?tags,
      'targetResourceTypes': ?targetResourceTypes,
      'windowDuration': windowDuration,
      'workspaceAlertsStorageEnabled': ?workspaceAlertsStorageEnabled,
    };
  }

  factory ScheduledQueryRulesAlertV2Args.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertV2Args(
      action: map['action'] == null ? null : ScheduledQueryRulesAlertV2Action.fromMap((map['action'] as Map).cast<String, dynamic>()),
      autoMitigationEnabled: map['autoMitigationEnabled'] == null ? null : map['autoMitigationEnabled'] as bool,
      criterias: pulumi.Input.decodeList<ScheduledQueryRulesAlertV2Criteria>(map['criterias'], (value) => ScheduledQueryRulesAlertV2Criteria.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      evaluationFrequency: map['evaluationFrequency'] as String,
      identity: map['identity'] == null ? null : ScheduledQueryRulesAlertV2Identity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      muteActionsAfterAlertDuration: map['muteActionsAfterAlertDuration'] == null ? null : map['muteActionsAfterAlertDuration'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      queryTimeRangeOverride: map['queryTimeRangeOverride'] == null ? null : map['queryTimeRangeOverride'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scopes: map['scopes'] as String,
      severity: map['severity'] as int,
      skipQueryValidation: map['skipQueryValidation'] == null ? null : map['skipQueryValidation'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetResourceTypes: map['targetResourceTypes'] == null ? null : (map['targetResourceTypes'] as List).cast<String>(),
      windowDuration: map['windowDuration'] as String,
      workspaceAlertsStorageEnabled: map['workspaceAlertsStorageEnabled'] == null ? null : map['workspaceAlertsStorageEnabled'] as bool,
    );
  }
}

