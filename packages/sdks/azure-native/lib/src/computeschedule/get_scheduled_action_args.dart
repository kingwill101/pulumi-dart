// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_computeschedule_get_scheduled_action_args_doc}
/// Arguments for getScheduledAction.
/// {@endtemplate}
/// {@macro pulumi_computeschedule_get_scheduled_action_args_doc}
class GetScheduledActionArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the ScheduledAction
  final pulumi.Input<String> scheduledActionName;

  /// Creates a new [GetScheduledActionArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduledActionName] The name of the ScheduledAction
  const GetScheduledActionArgs({
    required this.resourceGroupName,
    required this.scheduledActionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'scheduledActionName': scheduledActionName,
    };
  }

  factory GetScheduledActionArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduledActionArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scheduledActionName: pulumi.Input.fromValue(map['scheduledActionName'] as String),
    );
  }
}

