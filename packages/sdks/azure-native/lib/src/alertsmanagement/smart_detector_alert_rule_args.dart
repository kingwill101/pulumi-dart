// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_groups_information.dart';
import 'detector.dart';
import 'throttling_information.dart';

/// {@template pulumi_alertsmanagement_smart_detector_alert_rule_args_doc}
/// The set of arguments for SmartDetectorAlertRule.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_smart_detector_alert_rule_args_doc}
class SmartDetectorAlertRuleArgs {
  /// The alert rule actions.
  final pulumi.Input<ActionGroupsInformation> actionGroups;
  /// The name of the alert rule.
  final pulumi.Input<String>? alertRuleName;
  /// The alert rule description.
  final pulumi.Input<String>? description;
  /// The alert rule's detector.
  final pulumi.Input<Detector> detector;
  /// The alert rule frequency in ISO8601 format. The time granularity must be in minutes and minimum value is 1 minute, depending on the detector.
  final pulumi.Input<String> frequency;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The alert rule resources scope.
  final pulumi.Input<List<String>> scope;
  /// The alert rule severity.
  final pulumi.Input<String> severity;
  /// The alert rule state.
  final pulumi.Input<String> state;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The alert rule throttling information.
  final pulumi.Input<ThrottlingInformation>? throttling;

  /// Creates a new [SmartDetectorAlertRuleArgs].
  /// [actionGroups] The alert rule actions.
  /// [alertRuleName] The name of the alert rule.
  /// [description] The alert rule description.
  /// [detector] The alert rule's detector.
  /// [frequency] The alert rule frequency in ISO8601 format. The time granularity must be in minutes and minimum value is 1 minute, depending on the detector.
  /// [location] The resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [scope] The alert rule resources scope.
  /// [severity] The alert rule severity.
  /// [state] The alert rule state.
  /// [tags] The resource tags.
  /// [throttling] The alert rule throttling information.
  const SmartDetectorAlertRuleArgs({
    required this.actionGroups,
    this.alertRuleName,
    this.description,
    required this.detector,
    required this.frequency,
    this.location,
    required this.resourceGroupName,
    required this.scope,
    required this.severity,
    required this.state,
    this.tags,
    this.throttling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': pulumi.Input.mapInputValue<ActionGroupsInformation, Map<String, dynamic>>(actionGroups, (value) => value.toMap()),
      'alertRuleName': ?alertRuleName,
      'description': ?description,
      'detector': pulumi.Input.mapInputValue<Detector, Map<String, dynamic>>(detector, (value) => value.toMap()),
      'frequency': frequency,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'scope': scope,
      'severity': severity,
      'state': state,
      'tags': ?tags,
      'throttling': ?pulumi.Input.mapOptionalInputValue<ThrottlingInformation, Map<String, dynamic>>(throttling, (value) => value.toMap()),
    };
  }

  factory SmartDetectorAlertRuleArgs.fromMap(Map<String, dynamic> map) {
    return SmartDetectorAlertRuleArgs(
      actionGroups: pulumi.Input.fromValue(ActionGroupsInformation.fromMap((map['actionGroups']! as Map).cast<String, dynamic>())),
      alertRuleName: (() { final guardedValue = map['alertRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detector: pulumi.Input.fromValue(Detector.fromMap((map['detector']! as Map).cast<String, dynamic>())),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scope: pulumi.Input.fromValue((map['scope'] as List).cast<String>()),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throttling: (() { final guardedValue = map['throttling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThrottlingInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
