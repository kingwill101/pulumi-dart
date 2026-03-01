// ignore_for_file: unused_element, unnecessary_cast

import 'example_message_chunk_tool_call_toolset_tool.dart';

class ExampleMessageChunkToolCall {
  /// The input parameters and values for the tool in JSON object format.
  final String? args;

  /// (Output)
  /// Display name of the tool.
  final String? displayName;

  /// The unique identifier of the tool call. If populated, the client should
  /// return the execution result with the matching ID in
  /// ToolResponse.
  final String? id;

  /// The name of the tool to execute.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final String? tool;

  /// A tool that is created from a toolset.
  /// Structure is documented below.
  final ExampleMessageChunkToolCallToolsetTool? toolsetTool;

  /// Creates a new [ExampleMessageChunkToolCall].
  /// [args] The input parameters and values for the tool in JSON object format.
  /// [displayName] (Output)
  /// [id] The unique identifier of the tool call. If populated, the client should
  /// [tool] The name of the tool to execute.
  /// [toolsetTool] A tool that is created from a toolset.
  ExampleMessageChunkToolCall({
    this.args,
    this.displayName,
    this.id,
    this.tool,
    this.toolsetTool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'displayName': ?displayName,
      'id': ?id,
      'tool': ?tool,
      'toolsetTool': ?toolsetTool == null ? null : toolsetTool!.toMap(),
    };
  }

  factory ExampleMessageChunkToolCall.fromMap(Map<String, dynamic> map) {
    return ExampleMessageChunkToolCall(
      args: map['args'] == null ? null : map['args'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      tool: map['tool'] == null ? null : map['tool'] as String,
      toolsetTool: map['toolsetTool'] == null
          ? null
          : ExampleMessageChunkToolCallToolsetTool.fromMap(
              (map['toolsetTool'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
