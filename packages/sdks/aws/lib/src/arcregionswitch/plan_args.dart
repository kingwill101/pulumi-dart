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
    return <String, dynamic>{
      'associatedAlarms':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanAssociatedAlarm>,
            List<Map<String, dynamic>>
          >(
            associatedAlarms,
            (value) =>
                pulumi.Input.encodeList<
                  PlanAssociatedAlarm,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'executionRole': executionRole,
      'name': ?name,
      'primaryRegion': ?primaryRegion,
      'recoveryApproach': recoveryApproach,
      'recoveryTimeObjectiveMinutes': ?recoveryTimeObjectiveMinutes,
      'region': ?region,
      'regions': regions,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            PlanTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'triggers':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanTrigger>,
            List<Map<String, dynamic>>
          >(
            triggers,
            (value) =>
                pulumi.Input.encodeList<PlanTrigger, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'workflows':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflow>,
            List<Map<String, dynamic>>
          >(
            workflows,
            (value) =>
                pulumi.Input.encodeList<PlanWorkflow, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory PlanArgs.fromMap(Map<String, dynamic> map) {
    return PlanArgs(
      associatedAlarms: (() {
        final guardedValue = map['associatedAlarms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanAssociatedAlarm>(
            guardedValue,
            (value) => PlanAssociatedAlarm.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionRole: pulumi.Input.fromValue(map['executionRole'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryRegion: (() {
        final guardedValue = map['primaryRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryApproach: pulumi.Input.fromValue(
        map['recoveryApproach'] as String,
      ),
      recoveryTimeObjectiveMinutes: (() {
        final guardedValue = map['recoveryTimeObjectiveMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PlanTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      triggers: (() {
        final guardedValue = map['triggers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanTrigger>(
            guardedValue,
            (value) =>
                PlanTrigger.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      workflows: (() {
        final guardedValue = map['workflows'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanWorkflow>(
            guardedValue,
            (value) =>
                PlanWorkflow.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
