// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_schedule_args_doc}
/// Arguments for getSchedule.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_schedule_args_doc}
class GetScheduleArgs {
  /// Name of the pool.
  final pulumi.Input<String> poolName;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the schedule that uniquely identifies it.
  final pulumi.Input<String> scheduleName;
  /// The maximum number of resources to return from the operation. Example: '$top=10'.
  final pulumi.Input<int?>? top;

  /// Creates a new [GetScheduleArgs].
  /// [poolName] Name of the pool.
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduleName] The name of the schedule that uniquely identifies it.
  /// [top] The maximum number of resources to return from the operation. Example: '$top=10'.
  const GetScheduleArgs({
    required this.poolName,
    required this.projectName,
    required this.resourceGroupName,
    required this.scheduleName,
    this.top,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolName': poolName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'scheduleName': scheduleName,
      'top': ?top,
    };
  }

  factory GetScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduleArgs(
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scheduleName: pulumi.Input.fromValue(map['scheduleName'] as String),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
