// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_example_message_chunk_agent_transfer.dart';
import 'app_version_snapshot_example_message_chunk_image.dart';
import 'app_version_snapshot_example_message_chunk_tool_call.dart';
import 'app_version_snapshot_example_message_chunk_tool_response.dart';

class AppVersionSnapshotExampleMessageChunk {
  /// (Output)
  /// Represents an event indicating the transfer of a conversation to a different
  /// agent.
  /// Structure is documented below.
  final List<AppVersionSnapshotExampleMessageChunkAgentTransfer>?
      agentTransfers;

  /// (Output)
  /// Represents an image input or output in the conversation.
  /// Structure is documented below.
  final List<AppVersionSnapshotExampleMessageChunkImage>? images;

  /// (Output)
  /// Text for the agent to respond with.
  final String? text;

  /// (Output)
  /// Request for the client or the agent to execute the specified tool.
  /// Structure is documented below.
  final List<AppVersionSnapshotExampleMessageChunkToolCall>? toolCalls;

  /// (Output)
  /// The execution result of a specific tool from the client or the agent.
  /// Structure is documented below.
  final List<AppVersionSnapshotExampleMessageChunkToolResponse>? toolResponses;

  /// (Output)
  /// A struct represents variables that were updated in the conversation,
  /// keyed by variable names.
  final String? updatedVariables;

  /// Creates a new [AppVersionSnapshotExampleMessageChunk].
  /// [agentTransfers] (Output)
  /// [images] (Output)
  /// [text] (Output)
  /// [toolCalls] (Output)
  /// [toolResponses] (Output)
  /// [updatedVariables] (Output)
  AppVersionSnapshotExampleMessageChunk({
    this.agentTransfers,
    this.images,
    this.text,
    this.toolCalls,
    this.toolResponses,
    this.updatedVariables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final agentTransfersValue = agentTransfers;
    if (agentTransfersValue != null) {
      map['agentTransfers'] = pulumi.Input.encodeList<
          AppVersionSnapshotExampleMessageChunkAgentTransfer,
          Map<String, dynamic>>(agentTransfersValue, (value) => value.toMap());
    }
    final imagesValue = images;
    if (imagesValue != null) {
      map['images'] = pulumi.Input.encodeList<
          AppVersionSnapshotExampleMessageChunkImage,
          Map<String, dynamic>>(imagesValue, (value) => value.toMap());
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    final toolCallsValue = toolCalls;
    if (toolCallsValue != null) {
      map['toolCalls'] = pulumi.Input.encodeList<
          AppVersionSnapshotExampleMessageChunkToolCall,
          Map<String, dynamic>>(toolCallsValue, (value) => value.toMap());
    }
    final toolResponsesValue = toolResponses;
    if (toolResponsesValue != null) {
      map['toolResponses'] = pulumi.Input.encodeList<
          AppVersionSnapshotExampleMessageChunkToolResponse,
          Map<String, dynamic>>(toolResponsesValue, (value) => value.toMap());
    }
    final updatedVariablesValue = updatedVariables;
    if (updatedVariablesValue != null) {
      map['updatedVariables'] = updatedVariablesValue;
    }
    return map;
  }

  factory AppVersionSnapshotExampleMessageChunk.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessageChunk(
      agentTransfers: map['agentTransfers'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotExampleMessageChunkAgentTransfer>(
              map['agentTransfers'],
              (value) =>
                  AppVersionSnapshotExampleMessageChunkAgentTransfer.fromMap(
                      (value as Map).cast<String, dynamic>())),
      images: map['images'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotExampleMessageChunkImage>(
              map['images'],
              (value) => AppVersionSnapshotExampleMessageChunkImage.fromMap(
                  (value as Map).cast<String, dynamic>())),
      text: map['text'] == null ? null : map['text'] as String,
      toolCalls: map['toolCalls'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotExampleMessageChunkToolCall>(
              map['toolCalls'],
              (value) => AppVersionSnapshotExampleMessageChunkToolCall.fromMap(
                  (value as Map).cast<String, dynamic>())),
      toolResponses: map['toolResponses'] == null
          ? null
          : pulumi.Input.decodeList<
                  AppVersionSnapshotExampleMessageChunkToolResponse>(
              map['toolResponses'],
              (value) =>
                  AppVersionSnapshotExampleMessageChunkToolResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      updatedVariables: map['updatedVariables'] == null
          ? null
          : map['updatedVariables'] as String,
    );
  }
}
