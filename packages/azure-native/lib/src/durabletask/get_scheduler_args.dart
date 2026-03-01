// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_durabletask_get_scheduler_args_doc}
/// Arguments for getScheduler.
/// {@endtemplate}
/// {@macro pulumi_durabletask_get_scheduler_args_doc}
class GetSchedulerArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Scheduler
  final pulumi.Input<String> schedulerName;

  /// Creates a new [GetSchedulerArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schedulerName] The name of the Scheduler
  GetSchedulerArgs({
    required String resourceGroupName,
    required String schedulerName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schedulerName = pulumi.Input.asInput<String>(schedulerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'schedulerName': schedulerName,
    };
  }

  factory GetSchedulerArgs.fromMap(Map<String, dynamic> map) {
    return GetSchedulerArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      schedulerName: map['schedulerName'] as String,
    );
  }
}

