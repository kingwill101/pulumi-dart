// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_alert_action.dart';
import 'metric_alert_multiple_resource_multiple_metric_criteria.dart';

/// {@template pulumi_monitor_metric_alert_args_doc}
/// The set of arguments for MetricAlert.
/// {@endtemplate}
/// {@macro pulumi_monitor_metric_alert_args_doc}
class MetricAlertArgs {
  /// the array of actions that are performed when the alert rule becomes active, and when an alert condition is resolved.
  final pulumi.Input<List<MetricAlertAction>>? actions;
  /// the flag that indicates whether the alert should be auto resolved or not. The default is true.
  final pulumi.Input<bool>? autoMitigate;
  /// defines the specific alert criteria information.
  final pulumi.Input<MetricAlertMultipleResourceMultipleMetricCriteria> criteria;
  /// the description of the metric alert that will be included in the alert email.
  final pulumi.Input<String>? description;
  /// the flag that indicates whether the metric alert is enabled.
  final pulumi.Input<bool> enabled;
  /// how often the metric alert is evaluated represented in ISO 8601 duration format.
  final pulumi.Input<String> evaluationFrequency;
  /// Resource location
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the rule.
  final pulumi.Input<String>? ruleName;
  /// the list of resource id's that this metric alert is scoped to. You cannot change the scope of a metric rule based on logs.
  final pulumi.Input<List<String>> scopes;
  /// Alert severity {0, 1, 2, 3, 4}
  final pulumi.Input<int> severity;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// the region of the target resource(s) on which the alert is created/updated. Mandatory if the scope contains a subscription, resource group, or more than one resource.
  final pulumi.Input<String>? targetResourceRegion;
  /// the resource type of the target resource(s) on which the alert is created/updated. Mandatory if the scope contains a subscription, resource group, or more than one resource.
  final pulumi.Input<String>? targetResourceType;
  /// the period of time (in ISO 8601 duration format) that is used to monitor alert activity based on the threshold.
  final pulumi.Input<String> windowSize;

  /// Creates a new [MetricAlertArgs].
  /// [actions] the array of actions that are performed when the alert rule becomes active, and when an alert condition is resolved.
  /// [autoMitigate] the flag that indicates whether the alert should be auto resolved or not. The default is true.
  /// [criteria] defines the specific alert criteria information.
  /// [description] the description of the metric alert that will be included in the alert email.
  /// [enabled] the flag that indicates whether the metric alert is enabled.
  /// [evaluationFrequency] how often the metric alert is evaluated represented in ISO 8601 duration format.
  /// [location] Resource location
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] The name of the rule.
  /// [scopes] the list of resource id's that this metric alert is scoped to. You cannot change the scope of a metric rule based on logs.
  /// [severity] Alert severity {0, 1, 2, 3, 4}
  /// [tags] Resource tags
  /// [targetResourceRegion] the region of the target resource(s) on which the alert is created/updated. Mandatory if the scope contains a subscription, resource group, or more than one resource.
  /// [targetResourceType] the resource type of the target resource(s) on which the alert is created/updated. Mandatory if the scope contains a subscription, resource group, or more than one resource.
  /// [windowSize] the period of time (in ISO 8601 duration format) that is used to monitor alert activity based on the threshold.
  MetricAlertArgs({
    this.actions,
    this.autoMitigate,
    required this.criteria,
    this.description,
    required this.enabled,
    required this.evaluationFrequency,
    this.location,
    required this.resourceGroupName,
    this.ruleName,
    required this.scopes,
    required this.severity,
    this.tags,
    this.targetResourceRegion,
    this.targetResourceType,
    required this.windowSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<MetricAlertAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<MetricAlertAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoMitigate': ?autoMitigate,
      'criteria': pulumi.Input.mapInputValue<MetricAlertMultipleResourceMultipleMetricCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'description': ?description,
      'enabled': enabled,
      'evaluationFrequency': evaluationFrequency,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'ruleName': ?ruleName,
      'scopes': scopes,
      'severity': severity,
      'tags': ?tags,
      'targetResourceRegion': ?targetResourceRegion,
      'targetResourceType': ?targetResourceType,
      'windowSize': windowSize,
    };
  }

  factory MetricAlertArgs.fromMap(Map<String, dynamic> map) {
    return MetricAlertArgs(
      actions: map['actions'] == null ? null : (pulumi.Input.decodeList<MetricAlertAction>(map['actions'], (value) => MetricAlertAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoMitigate: map['autoMitigate'] == null ? null : (map['autoMitigate'] as bool).input(),
      criteria: (MetricAlertMultipleResourceMultipleMetricCriteria.fromMap((map['criteria'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      evaluationFrequency: (map['evaluationFrequency'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      scopes: ((map['scopes'] as List).cast<String>()).input(),
      severity: (map['severity'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      targetResourceRegion: map['targetResourceRegion'] == null ? null : (map['targetResourceRegion'] as String).input(),
      targetResourceType: map['targetResourceType'] == null ? null : (map['targetResourceType'] as String).input(),
      windowSize: (map['windowSize'] as String).input(),
    );
  }
}

