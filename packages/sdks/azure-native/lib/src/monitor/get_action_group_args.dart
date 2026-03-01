// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_action_group_args_doc}
/// Arguments for getActionGroup.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_action_group_args_doc}
class GetActionGroupArgs {
  /// The name of the action group.
  final pulumi.Input<String> actionGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetActionGroupArgs].
  /// [actionGroupName] The name of the action group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetActionGroupArgs({
    required pulumi.Output<String> actionGroupName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      actionGroupName = pulumi.Input.asInput<String>(actionGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupName': actionGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetActionGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetActionGroupArgs(
      actionGroupName: pulumi.Output.create<String>(map['actionGroupName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

