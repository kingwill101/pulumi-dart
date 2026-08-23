// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_agent_args_doc}
/// Arguments for getAgent.
/// {@endtemplate}
/// {@macro pulumi_app_get_agent_args_doc}
class GetAgentArgs {
  /// The name of the Agent
  final pulumi.Input<String> agentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAgentArgs].
  /// [agentName] The name of the Agent
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAgentArgs({
    required this.agentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': agentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentArgs(
      agentName: pulumi.Input.fromValue(map['agentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
