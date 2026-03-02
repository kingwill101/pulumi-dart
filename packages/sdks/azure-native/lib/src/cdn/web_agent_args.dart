// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_path.dart';

/// {@template pulumi_cdn_web_agent_args_doc}
/// The set of arguments for WebAgent.
/// {@endtemplate}
/// {@macro pulumi_cdn_web_agent_args_doc}
class WebAgentArgs {
  /// Optional textual description of the agent.
  final pulumi.Input<String>? description;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// List of paths associated with the web agent.
  final pulumi.Input<List<AgentPath>>? paths;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// System prompt for the web agent.
  final pulumi.Input<String>? systemPrompt;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the web agent.
  final pulumi.Input<String>? webAgentName;

  /// Creates a new [WebAgentArgs].
  /// [description] Optional textual description of the agent.
  /// [location] The geo-location where the resource lives
  /// [paths] List of paths associated with the web agent.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [systemPrompt] System prompt for the web agent.
  /// [tags] Resource tags.
  /// [webAgentName] The name of the web agent.
  WebAgentArgs({
    this.description,
    this.location,
    this.paths,
    required this.resourceGroupName,
    this.systemPrompt,
    this.tags,
    this.webAgentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'paths': ?pulumi.Input.mapOptionalInputValue<List<AgentPath>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<AgentPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'systemPrompt': ?systemPrompt,
      'tags': ?tags,
      'webAgentName': ?webAgentName,
    };
  }

  factory WebAgentArgs.fromMap(Map<String, dynamic> map) {
    return WebAgentArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      paths: map['paths'] == null ? null : (pulumi.Input.decodeList<AgentPath>(map['paths'], (value) => AgentPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      systemPrompt: map['systemPrompt'] == null ? null : (map['systemPrompt'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      webAgentName: map['webAgentName'] == null ? null : (map['webAgentName'] as String).input(),
    );
  }
}

