// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_example_message_chunk_tool_response_toolset_tool.dart';

class AppVersionSnapshotExampleMessageChunkToolResponse {
  /// The display name of the app version.
  final String? displayName;

  /// (Output)
  /// The matching ID of the tool call the response is for.
  final String? id;

  /// (Output)
  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final String? response;

  /// (Output)
  /// The name of the tool to execute.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/tools/{tool}`
  final String? tool;

  /// (Output)
  /// A tool that is created from a toolset.
  /// Structure is documented below.
  final List<AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool>?
      toolsetTools;

  /// Creates a new [AppVersionSnapshotExampleMessageChunkToolResponse].
  /// [displayName] The display name of the app version.
  /// [id] (Output)
  /// [response] (Output)
  /// [tool] (Output)
  /// [toolsetTools] (Output)
  AppVersionSnapshotExampleMessageChunkToolResponse({
    this.displayName,
    this.id,
    this.response,
    this.tool,
    this.toolsetTools,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final responseValue = response;
    if (responseValue != null) {
      map['response'] = responseValue;
    }
    final toolValue = tool;
    if (toolValue != null) {
      map['tool'] = toolValue;
    }
    final toolsetToolsValue = toolsetTools;
    if (toolsetToolsValue != null) {
      map['toolsetTools'] = pulumi.Input.encodeList<
          AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool,
          Map<String, dynamic>>(toolsetToolsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotExampleMessageChunkToolResponse.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessageChunkToolResponse(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      response: map['response'] == null ? null : map['response'] as String,
      tool: map['tool'] == null ? null : map['tool'] as String,
      toolsetTools: map['toolsetTools'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool>(
              map['toolsetTools'],
              (value) =>
                  AppVersionSnapshotExampleMessageChunkToolResponseToolsetTool
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
