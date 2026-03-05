// ignore_for_file: unused_element, unnecessary_cast

import 'action_groups_information_response.dart';
import 'detector_response.dart';
import 'throttling_information_response.dart';

/// Result data returned by getSmartDetectorAlertRule.
class GetSmartDetectorAlertRuleResult {
  /// The alert rule actions.
  final ActionGroupsInformationResponse actionGroups;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The alert rule description.
  final String? description;
  /// The alert rule's detector.
  final DetectorResponse detector;
  /// The alert rule frequency in ISO8601 format. The time granularity must be in minutes and minimum value is 1 minute, depending on the detector.
  final String frequency;
  /// The resource ID.
  final String id;
  /// The resource location.
  final String? location;
  /// The resource name.
  final String name;
  /// The alert rule resources scope.
  final List<String> scope;
  /// The alert rule severity.
  final String severity;
  /// The alert rule state.
  final String state;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The alert rule throttling information.
  final ThrottlingInformationResponse? throttling;
  /// The resource type.
  final String type;

  /// Creates a new [GetSmartDetectorAlertRuleResult].
  /// [actionGroups] The alert rule actions.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The alert rule description.
  /// [detector] The alert rule's detector.
  /// [frequency] The alert rule frequency in ISO8601 format. The time granularity must be in minutes and minimum value is 1 minute, depending on the detector.
  /// [id] The resource ID.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [scope] The alert rule resources scope.
  /// [severity] The alert rule severity.
  /// [state] The alert rule state.
  /// [tags] The resource tags.
  /// [throttling] The alert rule throttling information.
  /// [type] The resource type.
  GetSmartDetectorAlertRuleResult({
    required this.actionGroups,
    required this.azureApiVersion,
    this.description,
    required this.detector,
    required this.frequency,
    required this.id,
    this.location,
    required this.name,
    required this.scope,
    required this.severity,
    required this.state,
    this.tags,
    this.throttling,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': actionGroups.toMap(),
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'detector': detector.toMap(),
      'frequency': frequency,
      'id': id,
      'location': ?location,
      'name': name,
      'scope': scope,
      'severity': severity,
      'state': state,
      'tags': ?tags,
      'throttling': ?throttling?.toMap(),
      'type': type,
    };
  }

  factory GetSmartDetectorAlertRuleResult.fromMap(Map<String, dynamic> map) {
    return GetSmartDetectorAlertRuleResult(
      actionGroups: ActionGroupsInformationResponse.fromMap((map['actionGroups']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detector: DetectorResponse.fromMap((map['detector']! as Map).cast<String, dynamic>()),
      frequency: map['frequency'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      scope: (map['scope'] as List).cast<String>(),
      severity: map['severity'] as String,
      state: map['state'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      throttling: (() { final guardedValue = map['throttling']; if (guardedValue == null) return null; return ThrottlingInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: map['type'] as String,
    );
  }
}

