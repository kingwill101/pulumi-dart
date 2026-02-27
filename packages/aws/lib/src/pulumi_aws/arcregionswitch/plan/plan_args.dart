// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../plan_associated_alarm/plan_associated_alarm.dart';
import '../plan_timeouts/plan_timeouts.dart';
import '../plan_trigger/plan_trigger.dart';
import '../plan_workflow/plan_workflow.dart';

/// The set of arguments for Plan.
class PlanArgs {
  /// Set of CloudWatch alarms associated with the plan. See Associated Alarms below.
  final pulumi.Input<List<PlanAssociatedAlarm>>? associatedAlarms;

  /// Description of the plan.
  final pulumi.Input<String>? description;

  /// ARN of the IAM role that ARC Region Switch will assume to execute the plan.
  final pulumi.Input<String> executionRole;

  /// Name of the plan. Must be unique within the account.
  final pulumi.Input<String>? name;

  /// Primary region for the plan.
  final pulumi.Input<String>? primaryRegion;

  /// Recovery approach for the plan. Valid values: `activeActive`, `activePassive`.
  final pulumi.Input<String> recoveryApproach;

  /// Recovery time objective in minutes.
  final pulumi.Input<int>? recoveryTimeObjectiveMinutes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of AWS regions involved in the plan.
  final pulumi.Input<List<String>> regions;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<PlanTimeouts>? timeouts;

  /// Set of triggers that can initiate the plan execution. See Triggers below.
  final pulumi.Input<List<PlanTrigger>>? triggers;

  /// List of workflows that define the steps to execute. See Workflow below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<PlanWorkflow>>? workflows;

  PlanArgs({
    this.associatedAlarms,
    this.description,
    required this.executionRole,
    this.name,
    this.primaryRegion,
    required this.recoveryApproach,
    this.recoveryTimeObjectiveMinutes,
    this.region,
    required this.regions,
    this.tags,
    this.timeouts,
    this.triggers,
    this.workflows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final associatedAlarmsValue = associatedAlarms;
    if (associatedAlarmsValue != null) {
      map['associatedAlarms'] = pulumi.Input.mapOptionalInputValue<
              List<PlanAssociatedAlarm>, List<Map<String, dynamic>>>(
          associatedAlarmsValue,
          (value) => pulumi.Input.encodeList<PlanAssociatedAlarm,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['executionRole'] = executionRole;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final primaryRegionValue = primaryRegion;
    if (primaryRegionValue != null) {
      map['primaryRegion'] = primaryRegionValue;
    }
    map['recoveryApproach'] = recoveryApproach;
    final recoveryTimeObjectiveMinutesValue = recoveryTimeObjectiveMinutes;
    if (recoveryTimeObjectiveMinutesValue != null) {
      map['recoveryTimeObjectiveMinutes'] = recoveryTimeObjectiveMinutesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['regions'] = regions;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<PlanTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = pulumi.Input.mapOptionalInputValue<List<PlanTrigger>,
              List<Map<String, dynamic>>>(
          triggersValue,
          (value) => pulumi.Input.encodeList<PlanTrigger, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final workflowsValue = workflows;
    if (workflowsValue != null) {
      map['workflows'] = pulumi.Input.mapOptionalInputValue<List<PlanWorkflow>,
              List<Map<String, dynamic>>>(
          workflowsValue,
          (value) =>
              pulumi.Input.encodeList<PlanWorkflow, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory PlanArgs.fromMap(Map<String, dynamic> map) {
    return PlanArgs(
      associatedAlarms: pulumi.Input.asOptionalInput<List<PlanAssociatedAlarm>>(
          map['associatedAlarms']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      executionRole: pulumi.Input.asInput<String>(map['executionRole']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      primaryRegion: pulumi.Input.asOptionalInput<String>(map['primaryRegion']),
      recoveryApproach: pulumi.Input.asInput<String>(map['recoveryApproach']),
      recoveryTimeObjectiveMinutes: pulumi.Input.asOptionalInput<int>(
          map['recoveryTimeObjectiveMinutes']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      regions: pulumi.Input.asInput<List<String>>(map['regions']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<PlanTimeouts>(map['timeouts']),
      triggers:
          pulumi.Input.asOptionalInput<List<PlanTrigger>>(map['triggers']),
      workflows:
          pulumi.Input.asOptionalInput<List<PlanWorkflow>>(map['workflows']),
    );
  }
}
