// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../example_message/example_message.dart';

/// The set of arguments for Example.
class ExampleArgs {
  /// Resource ID segment making up resource `name`, defining the app the example belongs to. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> app;

  /// Human-readable description of the example.
  final Input<String>? description;

  /// Display name of the example.
  final Input<String> displayName;

  /// The agent that initially handles the conversation. If not specified, the
  /// example represents a conversation that is handled by the root agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final Input<String>? entryAgent;
  final Input<String> exampleId;

  /// Resource ID segment making up resource `name`, defining what region the parent app is in. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The collection of messages that make up the conversation.
  /// Structure is documented below.
  final Input<List<ExampleMessage>>? messages;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
      map['messages'] = Input.mapOptionalInputValue<List<ExampleMessage>,
              List<Map<String, dynamic>>>(
          messagesValue,
          (value) => Input.encodeList<ExampleMessage, Map<String, dynamic>>(
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
      app: Input.asInput<String>(map['app']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      entryAgent: Input.asOptionalInput<String>(map['entryAgent']),
      exampleId: Input.asInput<String>(map['exampleId']),
      location: Input.asInput<String>(map['location']),
      messages: Input.asOptionalInput<List<ExampleMessage>>(map['messages']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
