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
  SmartDetectorAlertRuleArgs({
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
      actionGroups: (ActionGroupsInformation.fromMap((map['actionGroups'] as Map).cast<String, dynamic>())).input(),
      alertRuleName: map['alertRuleName'] == null ? null : (map['alertRuleName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      detector: (Detector.fromMap((map['detector'] as Map).cast<String, dynamic>())).input(),
      frequency: (map['frequency'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scope: ((map['scope'] as List).cast<String>()).input(),
      severity: (map['severity'] as String).input(),
      state: (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      throttling: map['throttling'] == null ? null : (ThrottlingInformation.fromMap((map['throttling']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

