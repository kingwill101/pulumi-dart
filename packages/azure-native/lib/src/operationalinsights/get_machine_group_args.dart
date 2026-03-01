// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_machine_group_args_doc}
/// Arguments for getMachineGroup.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_machine_group_args_doc}
class GetMachineGroupArgs {
  /// UTC date and time specifying the end time of an interval. When not specified the service uses DateTime.UtcNow
  final pulumi.Input<String>? endTime;
  /// Machine Group resource name.
  final pulumi.Input<String> machineGroupName;
  /// Resource group name within the specified subscriptionId.
  final pulumi.Input<String> resourceGroupName;
  /// UTC date and time specifying the start time of an interval. When not specified the service uses DateTime.UtcNow - 10m
  final pulumi.Input<String>? startTime;
  /// OMS workspace containing the resources of interest.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetMachineGroupArgs].
  /// [endTime] UTC date and time specifying the end time of an interval. When not specified the service uses DateTime.UtcNow
  /// [machineGroupName] Machine Group resource name.
  /// [resourceGroupName] Resource group name within the specified subscriptionId.
  /// [startTime] UTC date and time specifying the start time of an interval. When not specified the service uses DateTime.UtcNow - 10m
  /// [workspaceName] OMS workspace containing the resources of interest.
  GetMachineGroupArgs({
    String? endTime,
    required String machineGroupName,
    required String resourceGroupName,
    String? startTime,
    required String workspaceName,
  }) :
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      machineGroupName = pulumi.Input.asInput<String>(machineGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'machineGroupName': machineGroupName,
      'resourceGroupName': resourceGroupName,
      'startTime': ?startTime,
      'workspaceName': workspaceName,
    };
  }

  factory GetMachineGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineGroupArgs(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      machineGroupName: map['machineGroupName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

