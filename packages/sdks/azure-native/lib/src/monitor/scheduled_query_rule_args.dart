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
    pulumi.Output<Actions>? actions,
    pulumi.Output<bool>? autoMitigate,
    pulumi.Output<bool>? checkWorkspaceAlertsStorageConfigured,
    required pulumi.Output<ScheduledQueryRuleCriteria> criteria,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<bool> enabled,
    pulumi.Output<String>? evaluationFrequency,
    pulumi.Output<Identity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? muteActionsDuration,
    pulumi.Output<String>? overrideQueryTimeRange,
    pulumi.Output<RuleResolveConfiguration>? resolveConfiguration,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? ruleName,
    required pulumi.Output<List<String>> scopes,
    pulumi.Output<double>? severity,
    pulumi.Output<bool>? skipQueryValidation,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? targetResourceTypes,
    pulumi.Output<String>? windowSize,
  }) :
      actions = pulumi.Input.asOptionalInput<Actions>(actions),
      autoMitigate = pulumi.Input.asOptionalInput<bool>(autoMitigate),
      checkWorkspaceAlertsStorageConfigured = pulumi.Input.asOptionalInput<bool>(checkWorkspaceAlertsStorageConfigured),
      criteria = pulumi.Input.asInput<ScheduledQueryRuleCriteria>(criteria),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enabled = pulumi.Input.asInput<bool>(enabled),
      evaluationFrequency = pulumi.Input.asOptionalInput<String>(evaluationFrequency),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      muteActionsDuration = pulumi.Input.asOptionalInput<String>(muteActionsDuration),
      overrideQueryTimeRange = pulumi.Input.asOptionalInput<String>(overrideQueryTimeRange),
      resolveConfiguration = pulumi.Input.asOptionalInput<RuleResolveConfiguration>(resolveConfiguration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      scopes = pulumi.Input.asInput<List<String>>(scopes),
      severity = pulumi.Input.asOptionalInput<double>(severity),
      skipQueryValidation = pulumi.Input.asOptionalInput<bool>(skipQueryValidation),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetResourceTypes = pulumi.Input.asOptionalInput<List<String>>(targetResourceTypes),
      windowSize = pulumi.Input.asOptionalInput<String>(windowSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<Actions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'autoMitigate': ?autoMitigate,
      'checkWorkspaceAlertsStorageConfigured': ?checkWorkspaceAlertsStorageConfigured,
      'criteria': pulumi.Input.mapInputValue<ScheduledQueryRuleCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'enabled': enabled,
      'evaluationFrequency': ?evaluationFrequency,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'muteActionsDuration': ?muteActionsDuration,
      'overrideQueryTimeRange': ?overrideQueryTimeRange,
      'resolveConfiguration': ?pulumi.Input.mapOptionalInputValue<RuleResolveConfiguration, Map<String, dynamic>>(resolveConfiguration, (value) => value.toMap()),
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
      actions: map['actions'] == null ? null : pulumi.Output.create<Actions>(Actions.fromMap((map['actions'] as Map).cast<String, dynamic>())),
      autoMitigate: map['autoMitigate'] == null ? null : pulumi.Output.create<bool>(map['autoMitigate'] as bool),
      checkWorkspaceAlertsStorageConfigured: map['checkWorkspaceAlertsStorageConfigured'] == null ? null : pulumi.Output.create<bool>(map['checkWorkspaceAlertsStorageConfigured'] as bool),
      criteria: pulumi.Output.create<ScheduledQueryRuleCriteria>(ScheduledQueryRuleCriteria.fromMap((map['criteria'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      evaluationFrequency: map['evaluationFrequency'] == null ? null : pulumi.Output.create<String>(map['evaluationFrequency'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      muteActionsDuration: map['muteActionsDuration'] == null ? null : pulumi.Output.create<String>(map['muteActionsDuration'] as String),
      overrideQueryTimeRange: map['overrideQueryTimeRange'] == null ? null : pulumi.Output.create<String>(map['overrideQueryTimeRange'] as String),
      resolveConfiguration: map['resolveConfiguration'] == null ? null : pulumi.Output.create<RuleResolveConfiguration>(RuleResolveConfiguration.fromMap((map['resolveConfiguration'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      scopes: pulumi.Output.create<List<String>>((map['scopes'] as List).cast<String>()),
      severity: map['severity'] == null ? null : pulumi.Output.create<double>(map['severity'] as double),
      skipQueryValidation: map['skipQueryValidation'] == null ? null : pulumi.Output.create<bool>(map['skipQueryValidation'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetResourceTypes: map['targetResourceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['targetResourceTypes'] as List).cast<String>()),
      windowSize: map['windowSize'] == null ? null : pulumi.Output.create<String>(map['windowSize'] as String),
    );
  }
}

