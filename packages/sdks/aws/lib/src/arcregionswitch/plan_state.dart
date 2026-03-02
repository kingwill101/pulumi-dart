// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_associated_alarm.dart';
import 'plan_timeouts.dart';
import 'plan_trigger.dart';
import 'plan_workflow.dart';

/// Input properties used for looking up and filtering Plan resources.
class PlanState {
  /// ARN of the plan.
  final pulumi.Input<String>? arn;
  /// Set of CloudWatch alarms associated with the plan. See Associated Alarms below.
  final pulumi.Input<List<PlanAssociatedAlarm>>? associatedAlarms;
  /// Description of the plan.
  final pulumi.Input<String>? description;
  /// ARN of the IAM role that ARC Region Switch will assume to execute the plan.
  final pulumi.Input<String>? executionRole;
  /// Name of the plan. Must be unique within the account.
  final pulumi.Input<String>? name;
  /// Primary region for the plan.
  final pulumi.Input<String>? primaryRegion;
  /// Recovery approach for the plan. Valid values: `activeActive`, `activePassive`.
  final pulumi.Input<String>? recoveryApproach;
  /// Recovery time objective in minutes.
  final pulumi.Input<int>? recoveryTimeObjectiveMinutes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of AWS regions involved in the plan.
  final pulumi.Input<List<String>>? regions;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<PlanTimeouts>? timeouts;
  /// Set of triggers that can initiate the plan execution. See Triggers below.
  final pulumi.Input<List<PlanTrigger>>? triggers;
  /// List of workflows that define the steps to execute. See Workflow below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<PlanWorkflow>>? workflows;

  /// Creates a new [PlanState].
  /// [arn] ARN of the plan.
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
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [triggers] Set of triggers that can initiate the plan execution. See Triggers below.
  /// [workflows] List of workflows that define the steps to execute. See Workflow below.
  PlanState({
    this.arn,
    this.associatedAlarms,
    this.description,
    this.executionRole,
    this.name,
    this.primaryRegion,
    this.recoveryApproach,
    this.recoveryTimeObjectiveMinutes,
    this.region,
    this.regions,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.triggers,
    this.workflows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associatedAlarms': ?pulumi.Input.mapOptionalInputValue<List<PlanAssociatedAlarm>, List<Map<String, dynamic>>>(associatedAlarms, (value) => pulumi.Input.encodeList<PlanAssociatedAlarm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'executionRole': ?executionRole,
      'name': ?name,
      'primaryRegion': ?primaryRegion,
      'recoveryApproach': ?recoveryApproach,
      'recoveryTimeObjectiveMinutes': ?recoveryTimeObjectiveMinutes,
      'region': ?region,
      'regions': ?regions,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PlanTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'triggers': ?pulumi.Input.mapOptionalInputValue<List<PlanTrigger>, List<Map<String, dynamic>>>(triggers, (value) => pulumi.Input.encodeList<PlanTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workflows': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflow>, List<Map<String, dynamic>>>(workflows, (value) => pulumi.Input.encodeList<PlanWorkflow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanState.fromMap(Map<String, dynamic> map) {
    return PlanState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      associatedAlarms: map['associatedAlarms'] == null ? null : (pulumi.Input.decodeList<PlanAssociatedAlarm>(map['associatedAlarms'], (value) => PlanAssociatedAlarm.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      executionRole: map['executionRole'] == null ? null : (map['executionRole'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      primaryRegion: map['primaryRegion'] == null ? null : (map['primaryRegion'] as String).input(),
      recoveryApproach: map['recoveryApproach'] == null ? null : (map['recoveryApproach'] as String).input(),
      recoveryTimeObjectiveMinutes: map['recoveryTimeObjectiveMinutes'] == null ? null : (map['recoveryTimeObjectiveMinutes'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      regions: map['regions'] == null ? null : ((map['regions'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (PlanTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      triggers: map['triggers'] == null ? null : (pulumi.Input.decodeList<PlanTrigger>(map['triggers'], (value) => PlanTrigger.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workflows: map['workflows'] == null ? null : (pulumi.Input.decodeList<PlanWorkflow>(map['workflows'], (value) => PlanWorkflow.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

