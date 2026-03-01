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
    required pulumi.Output<ActionGroupsInformation> actionGroups,
    pulumi.Output<String>? alertRuleName,
    pulumi.Output<String>? description,
    required pulumi.Output<Detector> detector,
    required pulumi.Output<String> frequency,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<List<String>> scope,
    required pulumi.Output<String> severity,
    required pulumi.Output<String> state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ThrottlingInformation>? throttling,
  }) :
      actionGroups = pulumi.Input.asInput<ActionGroupsInformation>(actionGroups),
      alertRuleName = pulumi.Input.asOptionalInput<String>(alertRuleName),
      description = pulumi.Input.asOptionalInput<String>(description),
      detector = pulumi.Input.asInput<Detector>(detector),
      frequency = pulumi.Input.asInput<String>(frequency),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asInput<List<String>>(scope),
      severity = pulumi.Input.asInput<String>(severity),
      state = pulumi.Input.asInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      throttling = pulumi.Input.asOptionalInput<ThrottlingInformation>(throttling);

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
      actionGroups: pulumi.Output.create<ActionGroupsInformation>(ActionGroupsInformation.fromMap((map['actionGroups'] as Map).cast<String, dynamic>())),
      alertRuleName: map['alertRuleName'] == null ? null : pulumi.Output.create<String>(map['alertRuleName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      detector: pulumi.Output.create<Detector>(Detector.fromMap((map['detector'] as Map).cast<String, dynamic>())),
      frequency: pulumi.Output.create<String>(map['frequency'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scope: pulumi.Output.create<List<String>>((map['scope'] as List).cast<String>()),
      severity: pulumi.Output.create<String>(map['severity'] as String),
      state: pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      throttling: map['throttling'] == null ? null : pulumi.Output.create<ThrottlingInformation>(ThrottlingInformation.fromMap((map['throttling'] as Map).cast<String, dynamic>())),
    );
  }
}

