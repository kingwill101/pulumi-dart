// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../example_message/example_message.dart';

/// The set of arguments for Example.
class ExampleArgs {
  /// Resource ID segment making up resource `name`, defining the app the example belongs to. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;

  /// Human-readable description of the example.
  final pulumi.Input<String>? description;

  /// Display name of the example.
  final pulumi.Input<String> displayName;

  /// The agent that initially handles the conversation. If not specified, the
  /// example represents a conversation that is handled by the root agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String>? entryAgent;
  final pulumi.Input<String> exampleId;

  /// Resource ID segment making up resource `name`, defining what region the parent app is in. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The collection of messages that make up the conversation.
  /// Structure is documented below.
  final pulumi.Input<List<ExampleMessage>>? messages;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  ExampleArgs({
    required this.app,
    this.description,
    required this.displayName,
    this.entryAgent,
    required this.exampleId,
    required this.location,
    this.messages,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['app'] = app;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final entryAgentValue = entryAgent;
    if (entryAgentValue != null) {
      map['entryAgent'] = entryAgentValue;
    }
    map['exampleId'] = exampleId;
    map['location'] = location;
    final messagesValue = messages;
    if (messagesValue != null) {
      map['messages'] = pulumi.Input.mapOptionalInputValue<List<ExampleMessage>,
              List<Map<String, dynamic>>>(
          messagesValue,
          (value) =>
              pulumi.Input.encodeList<ExampleMessage, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ExampleArgs.fromMap(Map<String, dynamic> map) {
    return ExampleArgs(
      app: pulumi.Input.asInput<String>(map['app']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      entryAgent: pulumi.Input.asOptionalInput<String>(map['entryAgent']),
      exampleId: pulumi.Input.asInput<String>(map['exampleId']),
      location: pulumi.Input.asInput<String>(map['location']),
      messages:
          pulumi.Input.asOptionalInput<List<ExampleMessage>>(map['messages']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
