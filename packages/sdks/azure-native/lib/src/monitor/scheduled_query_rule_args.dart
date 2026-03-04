// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'actions.dart';
import 'identity.dart';
import 'rule_resolve_configuration.dart';
import 'scheduled_query_rule_criteria.dart';

/// {@template pulumi_monitor_scheduled_query_rule_args_doc}
/// The set of arguments for ScheduledQueryRule.
/// {@endtemplate}
/// {@macro pulumi_monitor_scheduled_query_rule_args_doc}
class ScheduledQueryRuleArgs {
  /// Actions to invoke when the alert fires.
  final pulumi.Input<Actions>? actions;

  /// The flag that indicates whether the alert should be automatically resolved or not. The default is true. Relevant only for rules of kinds LogAlert and SimpleLogAlert.
  final pulumi.Input<bool>? autoMitigate;

  /// The flag which indicates whether this scheduled query rule should be stored in the customer's storage. The default is false. Relevant only for rules of the kind LogAlert.
  final pulumi.Input<bool>? checkWorkspaceAlertsStorageConfigured;

  /// The rule criteria that defines the conditions of the scheduled query rule.
  final pulumi.Input<ScheduledQueryRuleCriteria> criteria;

  /// The description of the scheduled query rule.
  final pulumi.Input<String>? description;

  /// The display name of the alert rule
  final pulumi.Input<String>? displayName;

  /// The flag which indicates whether this scheduled query rule is enabled. Value should be true or false
  final pulumi.Input<bool> enabled;

  /// How often the scheduled query rule is evaluated represented in ISO 8601 duration format. Relevant and required only for rules of the kind LogAlert.
  final pulumi.Input<String>? evaluationFrequency;

  /// The identity of the resource.
  final pulumi.Input<Identity>? identity;

  /// Indicates the type of scheduled query rule. The default is LogAlert.
  final pulumi.Input<String>? kind;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Mute actions for the chosen period of time (in ISO 8601 duration format) after the alert is fired. Relevant only for rules of the kind LogAlert.
  final pulumi.Input<String>? muteActionsDuration;

  /// If specified then overrides the query time range (default is WindowSize*NumberOfEvaluationPeriods). Relevant only for rules of the kind LogAlert.
  final pulumi.Input<String>? overrideQueryTimeRange;

  /// Defines the configuration for resolving fired alerts. Relevant only for rules of kinds LogAlert and SimpleLogAlert.
  final pulumi.Input<RuleResolveConfiguration>? resolveConfiguration;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the rule.
  final pulumi.Input<String>? ruleName;

  /// The list of resource id's that this scheduled query rule is scoped to.
  final pulumi.Input<List<String>> scopes;

  /// Severity of the alert. Should be an integer between [0-4]. Value of 0 is severest. Relevant and required only for rules of the kind LogAlert.
  final pulumi.Input<double>? severity;

  /// The flag which indicates whether the provided query should be validated or not. The default is false. Relevant only for rules of the kind LogAlert.
  final pulumi.Input<bool>? skipQueryValidation;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is Microsoft.Compute/virtualMachines, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria. Relevant only for rules of the kind LogAlert
  final pulumi.Input<List<String>>? targetResourceTypes;

  /// The period of time (in ISO 8601 duration format) on which the Alert query will be executed (bin size). Relevant and required only for rules of the kind LogAlert.
  final pulumi.Input<String>? windowSize;

  /// Creates a new [ScheduledQueryRuleArgs].
  /// [actions] Actions to invoke when the alert fires.
  /// [autoMitigate] The flag that indicates whether the alert should be automatically resolved or not. The default is true. Relevant only for rules of kinds LogAlert and SimpleLogAlert.
  /// [checkWorkspaceAlertsStorageConfigured] The flag which indicates whether this scheduled query rule should be stored in the customer's storage. The default is false. Relevant only for rules of the kind LogAlert.
  /// [criteria] The rule criteria that defines the conditions of the scheduled query rule.
  /// [description] The description of the scheduled query rule.
  /// [displayName] The display name of the alert rule
  /// [enabled] The flag which indicates whether this scheduled query rule is enabled. Value should be true or false
  /// [evaluationFrequency] How often the scheduled query rule is evaluated represented in ISO 8601 duration format. Relevant and required only for rules of the kind LogAlert.
  /// [identity] The identity of the resource.
  /// [kind] Indicates the type of scheduled query rule. The default is LogAlert.
  /// [location] The geo-location where the resource lives
  /// [muteActionsDuration] Mute actions for the chosen period of time (in ISO 8601 duration format) after the alert is fired. Relevant only for rules of the kind LogAlert.
  /// [overrideQueryTimeRange] If specified then overrides the query time range (default is WindowSize*NumberOfEvaluationPeriods). Relevant only for rules of the kind LogAlert.
  /// [resolveConfiguration] Defines the configuration for resolving fired alerts. Relevant only for rules of kinds LogAlert and SimpleLogAlert.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] The name of the rule.
  /// [scopes] The list of resource id's that this scheduled query rule is scoped to.
  /// [severity] Severity of the alert. Should be an integer between [0-4]. Value of 0 is severest. Relevant and required only for rules of the kind LogAlert.
  /// [skipQueryValidation] The flag which indicates whether the provided query should be validated or not. The default is false. Relevant only for rules of the kind LogAlert.
  /// [tags] Resource tags.
  /// [targetResourceTypes] List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is Microsoft.Compute/virtualMachines, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria. Relevant only for rules of the kind LogAlert
  /// [windowSize] The period of time (in ISO 8601 duration format) on which the Alert query will be executed (bin size). Relevant and required only for rules of the kind LogAlert.
  ScheduledQueryRuleArgs({
    this.actions,
    this.autoMitigate,
    this.checkWorkspaceAlertsStorageConfigured,
    required this.criteria,
    this.description,
    this.displayName,
    required this.enabled,
    this.evaluationFrequency,
    this.identity,
    this.kind,
    this.location,
    this.muteActionsDuration,
    this.overrideQueryTimeRange,
    this.resolveConfiguration,
    required this.resourceGroupName,
    this.ruleName,
    required this.scopes,
    this.severity,
    this.skipQueryValidation,
    this.tags,
    this.targetResourceTypes,
    this.windowSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          ?pulumi.Input.mapOptionalInputValue<Actions, Map<String, dynamic>>(
            actions,
            (value) => value.toMap(),
          ),
      'autoMitigate': ?autoMitigate,
      'checkWorkspaceAlertsStorageConfigured':
          ?checkWorkspaceAlertsStorageConfigured,
      'criteria':
          pulumi.Input.mapInputValue<
            ScheduledQueryRuleCriteria,
            Map<String, dynamic>
          >(criteria, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'enabled': enabled,
      'evaluationFrequency': ?evaluationFrequency,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(
            identity,
            (value) => value.toMap(),
          ),
      'kind': ?kind,
      'location': ?location,
      'muteActionsDuration': ?muteActionsDuration,
      'overrideQueryTimeRange': ?overrideQueryTimeRange,
      'resolveConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            RuleResolveConfiguration,
            Map<String, dynamic>
          >(resolveConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'ruleName': ?ruleName,
      'scopes': scopes,
      'severity': ?severity,
      'skipQueryValidation': ?skipQueryValidation,
      'tags': ?tags,
      'targetResourceTypes': ?targetResourceTypes,
      'windowSize': ?windowSize,
    };
  }

  factory ScheduledQueryRuleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRuleArgs(
      actions: (() {
        final guardedValue = map['actions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Actions.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      autoMitigate: (() {
        final guardedValue = map['autoMitigate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      checkWorkspaceAlertsStorageConfigured: (() {
        final guardedValue = map['checkWorkspaceAlertsStorageConfigured'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      criteria: pulumi.Input.fromValue(
        ScheduledQueryRuleCriteria.fromMap(
          (map['criteria']! as Map).cast<String, dynamic>(),
        ),
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      evaluationFrequency: (() {
        final guardedValue = map['evaluationFrequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Identity.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      muteActionsDuration: (() {
        final guardedValue = map['muteActionsDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      overrideQueryTimeRange: (() {
        final guardedValue = map['overrideQueryTimeRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resolveConfiguration: (() {
        final guardedValue = map['resolveConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleResolveConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      ruleName: (() {
        final guardedValue = map['ruleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      severity: (() {
        final guardedValue = map['severity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      skipQueryValidation: (() {
        final guardedValue = map['skipQueryValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetResourceTypes: (() {
        final guardedValue = map['targetResourceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      windowSize: (() {
        final guardedValue = map['windowSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
