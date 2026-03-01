// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_action_args_doc}
/// Arguments for getAction.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_action_args_doc}
class GetActionArgs {
  /// Action ID
  final pulumi.Input<String> actionId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Alert rule ID
  final pulumi.Input<String> ruleId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetActionArgs].
  /// [actionId] Action ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleId] Alert rule ID
  /// [workspaceName] The name of the workspace.
  GetActionArgs({
    required String actionId,
    required String resourceGroupName,
    required String ruleId,
    required String workspaceName,
  }) :
      actionId = pulumi.Input.asInput<String>(actionId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleId = pulumi.Input.asInput<String>(ruleId),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionId': actionId,
      'resourceGroupName': resourceGroupName,
      'ruleId': ruleId,
      'workspaceName': workspaceName,
    };
  }

  factory GetActionArgs.fromMap(Map<String, dynamic> map) {
    return GetActionArgs(
      actionId: map['actionId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleId: map['ruleId'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

