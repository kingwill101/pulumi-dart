// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plan_associated_alarm/plan_associated_alarm.dart';
import '../plan_timeouts/plan_timeouts.dart';
import '../plan_trigger/plan_trigger.dart';
import '../plan_workflow/plan_workflow.dart';

/// The set of arguments for Plan.
class PlanArgs {
  /// Set of CloudWatch alarms associated with the plan. See Associated Alarms below.
  final Input<List<PlanAssociatedAlarm>>? associatedAlarms;

  /// Description of the plan.
  final Input<String>? description;

  /// ARN of the IAM role that ARC Region Switch will assume to execute the plan.
  final Input<String> executionRole;

  /// Name of the plan. Must be unique within the account.
  final Input<String>? name;

  /// Primary region for the plan.
  final Input<String>? primaryRegion;

  /// Recovery approach for the plan. Valid values: `activeActive`, `activePassive`.
  final Input<String> recoveryApproach;

  /// Recovery time objective in minutes.
  final Input<int>? recoveryTimeObjectiveMinutes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of AWS regions involved in the plan.
  final Input<List<String>> regions;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<PlanTimeouts>? timeouts;

  /// Set of triggers that can initiate the plan execution. See Triggers below.
  final Input<List<PlanTrigger>>? triggers;

  /// List of workflows that define the steps to execute. See Workflow below.
  ///
  /// The following arguments are optional:
  final Input<List<PlanWorkflow>>? workflows;

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
      map['associatedAlarms'] = Input.mapOptionalInputValue<
              List<PlanAssociatedAlarm>, List<Map<String, dynamic>>>(
          associatedAlarmsValue,
          (value) =>
              Input.encodeList<PlanAssociatedAlarm, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      map['timeouts'] =
          Input.mapOptionalInputValue<PlanTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = Input.mapOptionalInputValue<List<PlanTrigger>,
              List<Map<String, dynamic>>>(
          triggersValue,
          (value) => Input.encodeList<PlanTrigger, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final workflowsValue = workflows;
    if (workflowsValue != null) {
      map['workflows'] = Input.mapOptionalInputValue<List<PlanWorkflow>,
              List<Map<String, dynamic>>>(
          workflowsValue,
          (value) => Input.encodeList<PlanWorkflow, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory PlanArgs.fromMap(Map<String, dynamic> map) {
    return PlanArgs(
      associatedAlarms: Input.asOptionalInput<List<PlanAssociatedAlarm>>(
          map['associatedAlarms']),
      description: Input.asOptionalInput<String>(map['description']),
      executionRole: Input.asInput<String>(map['executionRole']),
      name: Input.asOptionalInput<String>(map['name']),
      primaryRegion: Input.asOptionalInput<String>(map['primaryRegion']),
      recoveryApproach: Input.asInput<String>(map['recoveryApproach']),
      recoveryTimeObjectiveMinutes:
          Input.asOptionalInput<int>(map['recoveryTimeObjectiveMinutes']),
      region: Input.asOptionalInput<String>(map['region']),
      regions: Input.asInput<List<String>>(map['regions']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<PlanTimeouts>(map['timeouts']),
      triggers: Input.asOptionalInput<List<PlanTrigger>>(map['triggers']),
      workflows: Input.asOptionalInput<List<PlanWorkflow>>(map['workflows']),
    );
  }
}
