// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentic_application.dart';

/// {@template pulumi_cognitiveservices_agent_application_args_doc}
/// The set of arguments for AgentApplication.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_agent_application_args_doc}
class AgentApplicationArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Name for the Agent Application.
  final pulumi.Input<String>? name;
  /// The name of Cognitive Services account's project.
  final pulumi.Input<String> projectName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<AgenticApplication> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AgentApplicationArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [name] Name for the Agent Application.
  /// [projectName] The name of Cognitive Services account's project.
  /// [properties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AgentApplicationArgs({
    required String accountName,
    String? name,
    required String projectName,
    required AgenticApplication properties,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asInput<AgenticApplication>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': ?name,
      'projectName': projectName,
      'properties': pulumi.Input.mapInputValue<AgenticApplication, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AgentApplicationArgs.fromMap(Map<String, dynamic> map) {
    return AgentApplicationArgs(
      accountName: map['accountName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      projectName: map['projectName'] as String,
      properties: AgenticApplication.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

