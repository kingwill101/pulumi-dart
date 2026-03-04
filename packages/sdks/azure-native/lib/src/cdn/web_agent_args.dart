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
      'paths':
          ?pulumi.Input.mapOptionalInputValue<
            List<AgentPath>,
            List<Map<String, dynamic>>
          >(
            paths,
            (value) => pulumi.Input.encodeList<AgentPath, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'resourceGroupName': resourceGroupName,
      'systemPrompt': ?systemPrompt,
      'tags': ?tags,
      'webAgentName': ?webAgentName,
    };
  }

  factory WebAgentArgs.fromMap(Map<String, dynamic> map) {
    return WebAgentArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paths: (() {
        final guardedValue = map['paths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AgentPath>(
            guardedValue,
            (value) =>
                AgentPath.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      systemPrompt: (() {
        final guardedValue = map['systemPrompt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      webAgentName: (() {
        final guardedValue = map['webAgentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
