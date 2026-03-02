// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_list_agent_application_agents_args_doc}
/// Arguments for listAgentApplicationAgents.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_list_agent_application_agents_args_doc}
class ListAgentApplicationAgentsArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Agent Application name.
  final pulumi.Input<String> name;
  /// The name of Cognitive Services account's project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListAgentApplicationAgentsArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [name] Agent Application name.
  /// [projectName] The name of Cognitive Services account's project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListAgentApplicationAgentsArgs({
    required this.accountName,
    required this.name,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListAgentApplicationAgentsArgs.fromMap(Map<String, dynamic> map) {
    return ListAgentApplicationAgentsArgs(
      accountName: (map['accountName'] as String).input(),
      name: (map['name'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

