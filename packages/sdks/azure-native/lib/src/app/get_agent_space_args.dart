// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_agent_space_args_doc}
/// Arguments for getAgentSpace.
/// {@endtemplate}
/// {@macro pulumi_app_get_agent_space_args_doc}
class GetAgentSpaceArgs {
  /// The name of the AgentSpace
  final pulumi.Input<String> agentSpaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAgentSpaceArgs].
  /// [agentSpaceName] The name of the AgentSpace
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAgentSpaceArgs({
    required this.agentSpaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSpaceName': agentSpaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAgentSpaceArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentSpaceArgs(
      agentSpaceName: pulumi.Input.fromValue(map['agentSpaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
