// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentic_application_properties.dart';

/// {@template pulumi_cognitiveservices_agent_application_args_doc}
/// The set of arguments for AgentApplication.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_agent_application_args_doc}
class AgentApplicationArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Name for the Agent Application.
  final pulumi.Input<String?>? name;
  /// The name of Cognitive Services account's project.
  final pulumi.Input<String> projectName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<AgenticApplicationProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AgentApplicationArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [name] Name for the Agent Application.
  /// [projectName] The name of Cognitive Services account's project.
  /// [properties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const AgentApplicationArgs({
    required this.accountName,
    this.name,
    required this.projectName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': ?name,
      'projectName': projectName,
      'properties': pulumi.Input.mapInputValue<AgenticApplicationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AgentApplicationArgs.fromMap(Map<String, dynamic> map) {
    return AgentApplicationArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      properties: pulumi.Input.fromValue(AgenticApplicationProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
