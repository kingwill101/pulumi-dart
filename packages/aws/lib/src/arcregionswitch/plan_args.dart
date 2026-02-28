// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_associated_alarm.dart';
import 'plan_timeouts.dart';
import 'plan_trigger.dart';
import 'plan_workflow.dart';

/// {@template pulumi_arcregionswitch_plan_plan_args_doc}
/// The set of arguments for Plan.
/// {@endtemplate}
/// {@macro pulumi_arcregionswitch_plan_plan_args_doc}
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

  /// Creates a new [PlanArgs].
  /// [associatedAlarms] Set of CloudWatch alarms associated with the plan. See Associated Alarms below.
  /// [description] Description of the plan.
  /// [executionRole] ARN of the IAM role that ARC Region Switch will assume to execute the plan.
  /// [name] Name of the plan. Must be unique within the account.
  /// [primaryRegion] Primary region for the plan.
  /// [recoveryApproach] Recovery approach for the plan. Valid values: `activeActive`, `activePassive`.
  /// [recoveryTimeObjectiveMinutes] Recovery time objective in minutes.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regions] List of AWS regions involved in the plan.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [triggers] Set of triggers that can initiate the plan execution. See Triggers below.
  /// [workflows] List of workflows that define the steps to execute. See Workflow below.
  PlanArgs({
    List<PlanAssociatedAlarm>? associatedAlarms,
    String? description,
    required String executionRole,
    String? name,
    String? primaryRegion,
    required String recoveryApproach,
    int? recoveryTimeObjectiveMinutes,
    String? region,
    required List<String> regions,
    Map<String, String>? tags,
    PlanTimeouts? timeouts,
    List<PlanTrigger>? triggers,
    List<PlanWorkflow>? workflows,
  })  : associatedAlarms =
            pulumi.Input.asOptionalInput<List<PlanAssociatedAlarm>>(
                associatedAlarms),
        description = pulumi.Input.asOptionalInput<String>(description),
        executionRole = pulumi.Input.asInput<String>(executionRole),
        name = pulumi.Input.asOptionalInput<String>(name),
        primaryRegion = pulumi.Input.asOptionalInput<String>(primaryRegion),
        recoveryApproach = pulumi.Input.asInput<String>(recoveryApproach),
        recoveryTimeObjectiveMinutes =
            pulumi.Input.asOptionalInput<int>(recoveryTimeObjectiveMinutes),
        region = pulumi.Input.asOptionalInput<String>(region),
        regions = pulumi.Input.asInput<List<String>>(regions),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts = pulumi.Input.asOptionalInput<PlanTimeouts>(timeouts),
        triggers = pulumi.Input.asOptionalInput<List<PlanTrigger>>(triggers),
        workflows = pulumi.Input.asOptionalInput<List<PlanWorkflow>>(workflows);

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
      associatedAlarms: map['associatedAlarms'] == null
          ? null
          : pulumi.Input.decodeList<PlanAssociatedAlarm>(
              map['associatedAlarms'],
              (value) => PlanAssociatedAlarm.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      executionRole: map['executionRole'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      primaryRegion:
          map['primaryRegion'] == null ? null : map['primaryRegion'] as String,
      recoveryApproach: map['recoveryApproach'] as String,
      recoveryTimeObjectiveMinutes: map['recoveryTimeObjectiveMinutes'] == null
          ? null
          : map['recoveryTimeObjectiveMinutes'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      regions: (map['regions'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : PlanTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      triggers: map['triggers'] == null
          ? null
          : pulumi.Input.decodeList<PlanTrigger>(
              map['triggers'],
              (value) =>
                  PlanTrigger.fromMap((value as Map).cast<String, dynamic>())),
      workflows: map['workflows'] == null
          ? null
          : pulumi.Input.decodeList<PlanWorkflow>(
              map['workflows'],
              (value) =>
                  PlanWorkflow.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
