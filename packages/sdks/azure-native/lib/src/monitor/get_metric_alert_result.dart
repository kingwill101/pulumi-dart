// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_alert_action_response.dart';

/// Result data returned by getMetricAlert.
class GetMetricAlertResult {
  /// the array of actions that are performed when the alert rule becomes active, and when an alert condition is resolved.
  final List<MetricAlertActionResponse>? actions;
  /// the flag that indicates whether the alert should be auto resolved or not. The default is true.
  final bool? autoMitigate;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// defines the specific alert criteria information.
  final dynamic criteria;
  /// the description of the metric alert that will be included in the alert email.
  final String? description;
  /// the flag that indicates whether the metric alert is enabled.
  final bool? enabled;
  /// how often the metric alert is evaluated represented in ISO 8601 duration format.
  final String? evaluationFrequency;
  /// Azure resource Id
  final String? id;
  /// the value indicating whether this alert rule is migrated.
  final bool? isMigrated;
  /// Last time the rule was updated in ISO8601 format.
  final String? lastUpdatedTime;
  /// Resource location
  final String? location;
  /// Azure resource name
  final String? name;
  /// the list of resource id's that this metric alert is scoped to. You cannot change the scope of a metric rule based on logs.
  final List<String>? scopes;
  /// Alert severity {0, 1, 2, 3, 4}
  final int? severity;
  /// Resource tags
  final Map<String, String>? tags;
  /// the region of the target resource(s) on which the alert is created/updated. Mandatory if the scope contains a subscription, resource group, or more than one resource.
  final String? targetResourceRegion;
  /// the resource type of the target resource(s) on which the alert is created/updated. Mandatory if the scope contains a subscription, resource group, or more than one resource.
  final String? targetResourceType;
  /// Azure resource type
  final String? type;
  /// the period of time (in ISO 8601 duration format) that is used to monitor alert activity based on the threshold.
  final String? windowSize;

  /// Creates a new [GetMetricAlertResult].
  /// [actions] the array of actions that are performed when the alert rule becomes active, and when an alert condition is resolved.
  /// [autoMitigate] the flag that indicates whether the alert should be auto resolved or not. The default is true.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [criteria] defines the specific alert criteria information.
  /// [description] the description of the metric alert that will be included in the alert email.
  /// [enabled] the flag that indicates whether the metric alert is enabled.
  /// [evaluationFrequency] how often the metric alert is evaluated represented in ISO 8601 duration format.
  /// [id] Azure resource Id
  /// [isMigrated] the value indicating whether this alert rule is migrated.
  /// [lastUpdatedTime] Last time the rule was updated in ISO8601 format.
  /// [location] Resource location
  /// [name] Azure resource name
  /// [scopes] the list of resource id's that this metric alert is scoped to. You cannot change the scope of a metric rule based on logs.
  /// [severity] Alert severity {0, 1, 2, 3, 4}
  /// [tags] Resource tags
  /// [targetResourceRegion] the region of the target resource(s) on which the alert is created/updated. Mandatory if the scope contains a subscription, resource group, or more than one resource.
  /// [targetResourceType] the resource type of the target resource(s) on which the alert is created/updated. Mandatory if the scope contains a subscription, resource group, or more than one resource.
  /// [type] Azure resource type
  /// [windowSize] the period of time (in ISO 8601 duration format) that is used to monitor alert activity based on the threshold.
  const GetMetricAlertResult({
    this.actions,
    this.autoMitigate,
    this.azureApiVersion,
    this.criteria,
    this.description,
    this.enabled,
    this.evaluationFrequency,
    this.id,
    this.isMigrated,
    this.lastUpdatedTime,
    this.location,
    this.name,
    this.scopes,
    this.severity,
    this.tags,
    this.targetResourceRegion,
    this.targetResourceType,
    this.type,
    this.windowSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?(() { final guardedValue = actions; if (guardedValue == null) return null; return pulumi.Input.encodeList<MetricAlertActionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'autoMitigate': ?autoMitigate,
      'azureApiVersion': ?azureApiVersion,
      'criteria': ?criteria,
      'description': ?description,
      'enabled': ?enabled,
      'evaluationFrequency': ?evaluationFrequency,
      'id': ?id,
      'isMigrated': ?isMigrated,
      'lastUpdatedTime': ?lastUpdatedTime,
      'location': ?location,
      'name': ?name,
      'scopes': ?scopes,
      'severity': ?severity,
      'tags': ?tags,
      'targetResourceRegion': ?targetResourceRegion,
      'targetResourceType': ?targetResourceType,
      'type': ?type,
      'windowSize': ?windowSize,
    };
  }

  factory GetMetricAlertResult.fromMap(Map<String, dynamic> map) {
    return GetMetricAlertResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MetricAlertActionResponse>(guardedValue, (value) => MetricAlertActionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      autoMitigate: (() { final guardedValue = map['autoMitigate']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      criteria: (() { final guardedValue = map['criteria']; if (guardedValue == null) return null; return guardedValue; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      evaluationFrequency: (() { final guardedValue = map['evaluationFrequency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isMigrated: (() { final guardedValue = map['isMigrated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetResourceRegion: (() { final guardedValue = map['targetResourceRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetResourceType: (() { final guardedValue = map['targetResourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      windowSize: (() { final guardedValue = map['windowSize']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
