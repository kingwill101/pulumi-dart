// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_schedule_args_doc}
/// The set of arguments for Schedule.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_schedule_args_doc}
class ScheduleArgs {
  /// Schedule name.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ScheduleMachinelearningservices> scheduleProperties;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ScheduleArgs].
  /// [name] Schedule name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduleProperties] [Required] Additional attributes of the entity.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ScheduleArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<ScheduleMachinelearningservices> scheduleProperties,
    required pulumi.Output<String> workspaceName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scheduleProperties = pulumi.Input.asInput<ScheduleMachinelearningservices>(scheduleProperties),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'scheduleProperties': scheduleProperties,
      'workspaceName': workspaceName,
    };
  }

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scheduleProperties: pulumi.Output.create<ScheduleMachinelearningservices>(map['scheduleProperties'] as ScheduleMachinelearningservices),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

