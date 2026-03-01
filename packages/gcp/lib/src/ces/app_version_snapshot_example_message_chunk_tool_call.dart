// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_example_message_chunk_tool_call_toolset_tool.dart';

class AppVersionSnapshotExampleMessageChunkToolCall {
  /// (Output)
  /// The input parameters and values for the tool in JSON object format.
  final String? args;

  /// The display name of the app version.
  final String? displayName;

  /// (Output)
  /// The matching ID of the tool call the response is for.
  final String? id;

  /// (Output)
  /// The name of the tool to execute.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final String? tool;

  /// (Output)
  /// A tool that is created from a toolset.
  /// Structure is documented below.
  final List<AppVersionSnapshotExampleMessageChunkToolCallToolsetTool>?
  toolsetTools;

  /// Creates a new [AppVersionSnapshotExampleMessageChunkToolCall].
  /// [args] (Output)
  /// [displayName] The display name of the app version.
  /// [id] (Output)
  /// [tool] (Output)
  /// [toolsetTools] (Output)
  AppVersionSnapshotExampleMessageChunkToolCall({
    this.args,
    this.displayName,
    this.id,
    this.tool,
    this.toolsetTools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'displayName': ?displayName,
      'id': ?id,
      'tool': ?tool,
      'toolsetTools': ?toolsetTools == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotExampleMessageChunkToolCallToolsetTool,
              Map<String, dynamic>
            >(toolsetTools!, (value) => value.toMap()),
    };
  }

  factory AppVersionSnapshotExampleMessageChunkToolCall.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotExampleMessageChunkToolCall(
      args: map['args'] == null ? null : map['args'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      tool: map['tool'] == null ? null : map['tool'] as String,
      toolsetTools: map['toolsetTools'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotExampleMessageChunkToolCallToolsetTool
            >(
              map['toolsetTools'],
              (value) =>
                  AppVersionSnapshotExampleMessageChunkToolCallToolsetTool.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
