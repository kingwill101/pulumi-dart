// ignore_for_file: unused_element, unnecessary_cast

import 'actions_response.dart';
import 'identity_response.dart';
import 'rule_resolve_configuration_response.dart';
import 'scheduled_query_rule_criteria_response.dart';
import 'system_data_response.dart';

/// Result data returned by getScheduledQueryRule.
class GetScheduledQueryRuleResult {
  /// Actions to invoke when the alert fires.
  final ActionsResponse? actions;
  /// The flag that indicates whether the alert should be automatically resolved or not. The default is true. Relevant only for rules of kinds LogAlert and SimpleLogAlert.
  final bool? autoMitigate;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The flag which indicates whether this scheduled query rule should be stored in the customer's storage. The default is false. Relevant only for rules of the kind LogAlert.
  final bool? checkWorkspaceAlertsStorageConfigured;
  /// The api-version used when creating this alert rule
  final String createdWithApiVersion;
  /// The rule criteria that defines the conditions of the scheduled query rule.
  final ScheduledQueryRuleCriteriaResponse criteria;
  /// The description of the scheduled query rule.
  final String? description;
  /// The display name of the alert rule
  final String? displayName;
  /// The flag which indicates whether this scheduled query rule is enabled. Value should be true or false
  final bool enabled;
  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String etag;
  /// How often the scheduled query rule is evaluated represented in ISO 8601 duration format. Relevant and required only for rules of the kind LogAlert.
  final String? evaluationFrequency;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// True if alert rule is legacy Log Analytic rule
  final bool isLegacyLogAnalyticsRule;
  /// The flag which indicates whether this scheduled query rule has been configured to be stored in the customer's storage. The default is false.
  final bool isWorkspaceAlertsStorageConfigured;
  /// Indicates the type of scheduled query rule. The default is LogAlert.
  final String? kind;
  /// The geo-location where the resource lives
  final String location;
  /// Mute actions for the chosen period of time (in ISO 8601 duration format) after the alert is fired. Relevant only for rules of the kind LogAlert.
  final String? muteActionsDuration;
  /// The name of the resource
  final String name;
  /// If specified then overrides the query time range (default is WindowSize*NumberOfEvaluationPeriods). Relevant only for rules of the kind LogAlert.
  final String? overrideQueryTimeRange;
  /// Defines the configuration for resolving fired alerts. Relevant only for rules of kinds LogAlert and SimpleLogAlert.
  final RuleResolveConfigurationResponse? resolveConfiguration;
  /// The list of resource id's that this scheduled query rule is scoped to.
  final List<String> scopes;
  /// Severity of the alert. Should be an integer between [0-4]. Value of 0 is severest. Relevant and required only for rules of the kind LogAlert.
  final double? severity;
  /// The flag which indicates whether the provided query should be validated or not. The default is false. Relevant only for rules of the kind LogAlert.
  final bool? skipQueryValidation;
  /// SystemData of ScheduledQueryRule.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is Microsoft.Compute/virtualMachines, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria. Relevant only for rules of the kind LogAlert
  final List<String>? targetResourceTypes;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The period of time (in ISO 8601 duration format) on which the Alert query will be executed (bin size). Relevant and required only for rules of the kind LogAlert.
  final String? windowSize;

  /// Creates a new [GetScheduledQueryRuleResult].
  /// [actions] Actions to invoke when the alert fires.
  /// [autoMitigate] The flag that indicates whether the alert should be automatically resolved or not. The default is true. Relevant only for rules of kinds LogAlert and SimpleLogAlert.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [checkWorkspaceAlertsStorageConfigured] The flag which indicates whether this scheduled query rule should be stored in the customer's storage. The default is false. Relevant only for rules of the kind LogAlert.
  /// [createdWithApiVersion] The api-version used when creating this alert rule
  /// [criteria] The rule criteria that defines the conditions of the scheduled query rule.
  /// [description] The description of the scheduled query rule.
  /// [displayName] The display name of the alert rule
  /// [enabled] The flag which indicates whether this scheduled query rule is enabled. Value should be true or false
  /// [etag] The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [evaluationFrequency] How often the scheduled query rule is evaluated represented in ISO 8601 duration format. Relevant and required only for rules of the kind LogAlert.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the resource.
  /// [isLegacyLogAnalyticsRule] True if alert rule is legacy Log Analytic rule
  /// [isWorkspaceAlertsStorageConfigured] The flag which indicates whether this scheduled query rule has been configured to be stored in the customer's storage. The default is false.
  /// [kind] Indicates the type of scheduled query rule. The default is LogAlert.
  /// [location] The geo-location where the resource lives
  /// [muteActionsDuration] Mute actions for the chosen period of time (in ISO 8601 duration format) after the alert is fired. Relevant only for rules of the kind LogAlert.
  /// [name] The name of the resource
  /// [overrideQueryTimeRange] If specified then overrides the query time range (default is WindowSize*NumberOfEvaluationPeriods). Relevant only for rules of the kind LogAlert.
  /// [resolveConfiguration] Defines the configuration for resolving fired alerts. Relevant only for rules of kinds LogAlert and SimpleLogAlert.
  /// [scopes] The list of resource id's that this scheduled query rule is scoped to.
  /// [severity] Severity of the alert. Should be an integer between [0-4]. Value of 0 is severest. Relevant and required only for rules of the kind LogAlert.
  /// [skipQueryValidation] The flag which indicates whether the provided query should be validated or not. The default is false. Relevant only for rules of the kind LogAlert.
  /// [systemData] SystemData of ScheduledQueryRule.
  /// [tags] Resource tags.
  /// [targetResourceTypes] List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is Microsoft.Compute/virtualMachines, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria. Relevant only for rules of the kind LogAlert
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [windowSize] The period of time (in ISO 8601 duration format) on which the Alert query will be executed (bin size). Relevant and required only for rules of the kind LogAlert.
  GetScheduledQueryRuleResult({
    this.actions,
    this.autoMitigate,
    required this.azureApiVersion,
    this.checkWorkspaceAlertsStorageConfigured,
    required this.createdWithApiVersion,
    required this.criteria,
    this.description,
    this.displayName,
    required this.enabled,
    required this.etag,
    this.evaluationFrequency,
    required this.id,
    this.identity,
    required this.isLegacyLogAnalyticsRule,
    required this.isWorkspaceAlertsStorageConfigured,
    this.kind,
    required this.location,
    this.muteActionsDuration,
    required this.name,
    this.overrideQueryTimeRange,
    this.resolveConfiguration,
    required this.scopes,
    this.severity,
    this.skipQueryValidation,
    required this.systemData,
    this.tags,
    this.targetResourceTypes,
    required this.type,
    this.windowSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : actions!.toMap(),
      'autoMitigate': ?autoMitigate,
      'azureApiVersion': azureApiVersion,
      'checkWorkspaceAlertsStorageConfigured': ?checkWorkspaceAlertsStorageConfigured,
      'createdWithApiVersion': createdWithApiVersion,
      'criteria': criteria.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'enabled': enabled,
      'etag': etag,
      'evaluationFrequency': ?evaluationFrequency,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'isLegacyLogAnalyticsRule': isLegacyLogAnalyticsRule,
      'isWorkspaceAlertsStorageConfigured': isWorkspaceAlertsStorageConfigured,
      'kind': ?kind,
      'location': location,
      'muteActionsDuration': ?muteActionsDuration,
      'name': name,
      'overrideQueryTimeRange': ?overrideQueryTimeRange,
      'resolveConfiguration': ?resolveConfiguration == null ? null : resolveConfiguration!.toMap(),
      'scopes': scopes,
      'severity': ?severity,
      'skipQueryValidation': ?skipQueryValidation,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'targetResourceTypes': ?targetResourceTypes,
      'type': type,
      'windowSize': ?windowSize,
    };
  }

  factory GetScheduledQueryRuleResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRuleResult(
      actions: map['actions'] == null ? null : ActionsResponse.fromMap((map['actions'] as Map).cast<String, dynamic>()),
      autoMitigate: map['autoMitigate'] == null ? null : map['autoMitigate'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      checkWorkspaceAlertsStorageConfigured: map['checkWorkspaceAlertsStorageConfigured'] == null ? null : map['checkWorkspaceAlertsStorageConfigured'] as bool,
      createdWithApiVersion: map['createdWithApiVersion'] as String,
      criteria: ScheduledQueryRuleCriteriaResponse.fromMap((map['criteria'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      enabled: map['enabled'] as bool,
      etag: map['etag'] as String,
      evaluationFrequency: map['evaluationFrequency'] == null ? null : map['evaluationFrequency'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      isLegacyLogAnalyticsRule: map['isLegacyLogAnalyticsRule'] as bool,
      isWorkspaceAlertsStorageConfigured: map['isWorkspaceAlertsStorageConfigured'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] as String,
      muteActionsDuration: map['muteActionsDuration'] == null ? null : map['muteActionsDuration'] as String,
      name: map['name'] as String,
      overrideQueryTimeRange: map['overrideQueryTimeRange'] == null ? null : map['overrideQueryTimeRange'] as String,
      resolveConfiguration: map['resolveConfiguration'] == null ? null : RuleResolveConfigurationResponse.fromMap((map['resolveConfiguration'] as Map).cast<String, dynamic>()),
      scopes: (map['scopes'] as List).cast<String>(),
      severity: map['severity'] == null ? null : map['severity'] as double,
      skipQueryValidation: map['skipQueryValidation'] == null ? null : map['skipQueryValidation'] as bool,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetResourceTypes: map['targetResourceTypes'] == null ? null : (map['targetResourceTypes'] as List).cast<String>(),
      type: map['type'] as String,
      windowSize: map['windowSize'] == null ? null : map['windowSize'] as String,
    );
  }
}

