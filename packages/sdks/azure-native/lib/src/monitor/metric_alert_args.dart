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
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetricAlertAction>(guardedValue, (value) => MetricAlertAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      autoMitigate: (() { final guardedValue = map['autoMitigate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      criteria: pulumi.Input.fromValue(MetricAlertMultipleResourceMultipleMetricCriteria.fromMap((map['criteria']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      evaluationFrequency: pulumi.Input.fromValue(map['evaluationFrequency'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      severity: pulumi.Input.fromValue(map['severity'] as int),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetResourceRegion: (() { final guardedValue = map['targetResourceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceType: (() { final guardedValue = map['targetResourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      windowSize: pulumi.Input.fromValue(map['windowSize'] as String),
    );
  }
}

