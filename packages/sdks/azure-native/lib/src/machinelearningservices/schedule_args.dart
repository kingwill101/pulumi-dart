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
    this.name,
    required this.resourceGroupName,
    required this.scheduleProperties,
    required this.workspaceName,
  });

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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scheduleProperties: (map['scheduleProperties'] as ScheduleMachinelearningservices).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

