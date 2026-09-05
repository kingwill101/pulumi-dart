// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_associated_alarm.dart';
import 'plan_report_configuration.dart';
import 'plan_timeouts.dart';
import 'plan_trigger.dart';
import 'plan_workflow.dart';

/// Input properties used for looking up and filtering Plan resources.
class PlanState {
  /// ARN of the plan.
  final pulumi.Input<String?>? arn;
  /// CloudWatch alarms associated with the plan. See `associatedAlarms` Block for details.
  final pulumi.Input<List<PlanAssociatedAlarm>?>? associatedAlarms;
  /// Description of the plan.
  final pulumi.Input<String?>? description;
  /// ARN of the IAM role that ARC Region Switch will assume to execute the plan.
  final pulumi.Input<String?>? executionRole;
  /// Name of the plan. Must be unique within the account.
  final pulumi.Input<String?>? name;
  /// Primary region for the plan.
  final pulumi.Input<String?>? primaryRegion;
  /// Recovery approach for the plan. Valid values: `activeActive`, `activePassive`.
  final pulumi.Input<String?>? recoveryApproach;
  /// Recovery time objective in minutes.
  final pulumi.Input<int?>? recoveryTimeObjectiveMinutes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// List of AWS regions involved in the plan. Must contain at least 2 regions.
  final pulumi.Input<List<String>?>? regions;
  /// Configuration for automated execution reports. See `reportConfiguration` Block for details.
  final pulumi.Input<List<PlanReportConfiguration>?>? reportConfigurations;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<PlanTimeouts?>? timeouts;
  /// Triggers that can initiate the plan execution. See `triggers` Block for details.
  final pulumi.Input<List<PlanTrigger>?>? triggers;
  /// Workflows that define the steps to execute. See `workflow` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<PlanWorkflow>?>? workflows;

  /// Creates a new [PlanState].
  /// [arn] ARN of the plan.
  /// [associatedAlarms] CloudWatch alarms associated with the plan. See `associatedAlarms` Block for details.
  /// [description] Description of the plan.
  /// [executionRole] ARN of the IAM role that ARC Region Switch will assume to execute the plan.
  /// [name] Name of the plan. Must be unique within the account.
  /// [primaryRegion] Primary region for the plan.
  /// [recoveryApproach] Recovery approach for the plan. Valid values: `activeActive`, `activePassive`.
  /// [recoveryTimeObjectiveMinutes] Recovery time objective in minutes.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regions] List of AWS regions involved in the plan. Must contain at least 2 regions.
  /// [reportConfigurations] Configuration for automated execution reports. See `reportConfiguration` Block for details.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [triggers] Triggers that can initiate the plan execution. See `triggers` Block for details.
  /// [workflows] Workflows that define the steps to execute. See `workflow` Block for details.
  const PlanState({
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
    this.reportConfigurations,
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
      'reportConfigurations': ?pulumi.Input.mapOptionalInputValue<List<PlanReportConfiguration>, List<Map<String, dynamic>>>(reportConfigurations, (value) => pulumi.Input.encodeList<PlanReportConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PlanTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'triggers': ?pulumi.Input.mapOptionalInputValue<List<PlanTrigger>, List<Map<String, dynamic>>>(triggers, (value) => pulumi.Input.encodeList<PlanTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workflows': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflow>, List<Map<String, dynamic>>>(workflows, (value) => pulumi.Input.encodeList<PlanWorkflow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanState.fromMap(Map<String, dynamic> map) {
    return PlanState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatedAlarms: (() { final guardedValue = map['associatedAlarms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanAssociatedAlarm>(guardedValue, (value) => PlanAssociatedAlarm.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRole: (() { final guardedValue = map['executionRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryRegion: (() { final guardedValue = map['primaryRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryApproach: (() { final guardedValue = map['recoveryApproach']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryTimeObjectiveMinutes: (() { final guardedValue = map['recoveryTimeObjectiveMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      reportConfigurations: (() { final guardedValue = map['reportConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanReportConfiguration>(guardedValue, (value) => PlanReportConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlanTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanTrigger>(guardedValue, (value) => PlanTrigger.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workflows: (() { final guardedValue = map['workflows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflow>(guardedValue, (value) => PlanWorkflow.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
