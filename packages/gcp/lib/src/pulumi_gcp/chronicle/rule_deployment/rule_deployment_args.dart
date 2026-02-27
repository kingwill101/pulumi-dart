// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RuleDeployment.
class RuleDeploymentArgs {
  /// Whether detections resulting from this deployment should be considered
  /// alerts.
  final pulumi.Input<bool>? alerting;

  /// The archive state of the rule deployment.
  /// Cannot be set to true unless enabled is set to false i.e.
  /// archiving requires a two-step process: first, disable the rule by
  /// setting 'enabled' to false, then set 'archive' to true.
  /// If set to true, alerting will automatically be set to false.
  /// If currently set to true, enabled, alerting, and run_frequency cannot be
  /// updated.
  final pulumi.Input<bool>? archived;

  /// Whether the rule is currently deployed continuously against incoming data.
  final pulumi.Input<bool>? enabled;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The Rule ID of the rule.
  final pulumi.Input<String> rule;

  /// The run frequency of the rule deployment.
  /// Possible values:
  /// LIVE
  /// HOURLY
  /// DAILY
  final pulumi.Input<String>? runFrequency;

  RuleDeploymentArgs({
    this.alerting,
    this.archived,
    this.enabled,
    required this.instance,
    required this.location,
    this.project,
    required this.rule,
    this.runFrequency,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alertingValue = alerting;
    if (alertingValue != null) {
      map['alerting'] = alertingValue;
    }
    final archivedValue = archived;
    if (archivedValue != null) {
      map['archived'] = archivedValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['instance'] = instance;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rule'] = rule;
    final runFrequencyValue = runFrequency;
    if (runFrequencyValue != null) {
      map['runFrequency'] = runFrequencyValue;
    }
    return map;
  }

  factory RuleDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return RuleDeploymentArgs(
      alerting: pulumi.Input.asOptionalInput<bool>(map['alerting']),
      archived: pulumi.Input.asOptionalInput<bool>(map['archived']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rule: pulumi.Input.asInput<String>(map['rule']),
      runFrequency: pulumi.Input.asOptionalInput<String>(map['runFrequency']),
    );
  }
}
