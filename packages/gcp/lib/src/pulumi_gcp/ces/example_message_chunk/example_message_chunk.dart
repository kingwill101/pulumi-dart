// ignore_for_file: unused_element, unnecessary_cast

import '../example_message_chunk_agent_transfer/example_message_chunk_agent_transfer.dart';
import '../example_message_chunk_image/example_message_chunk_image.dart';
import '../example_message_chunk_tool_call/example_message_chunk_tool_call.dart';
import '../example_message_chunk_tool_response/example_message_chunk_tool_response.dart';

class ExampleMessageChunk {
  /// Represents an event indicating the transfer of a conversation to a different
  /// agent.
  /// Structure is documented below.
  final ExampleMessageChunkAgentTransfer? agentTransfer;

  /// Represents an image input or output in the conversation.
  /// Structure is documented below.
  final ExampleMessageChunkImage? image;

  /// Text data.
  final String? text;

  /// Request for the client or the agent to execute the specified tool.
  /// Structure is documented below.
  final ExampleMessageChunkToolCall? toolCall;

  /// The execution result of a specific tool from the client or the agent.
  /// Structure is documented below.
  final ExampleMessageChunkToolResponse? toolResponse;

  /// A struct represents variables that were updated in the conversation,
  /// keyed by variable names.
  final String? updatedVariables;

  ExampleMessageChunk({
    this.agentTransfer,
    this.image,
    this.text,
    this.toolCall,
    this.toolResponse,
    this.updatedVariables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final agentTransferValue = agentTransfer;
    if (agentTransferValue != null) {
      map['agentTransfer'] = agentTransferValue.toMap();
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue.toMap();
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    final toolCallValue = toolCall;
    if (toolCallValue != null) {
      map['toolCall'] = toolCallValue.toMap();
    }
    final toolResponseValue = toolResponse;
    if (toolResponseValue != null) {
      map['toolResponse'] = toolResponseValue.toMap();
    }
    final updatedVariablesValue = updatedVariables;
    if (updatedVariablesValue != null) {
      map['updatedVariables'] = updatedVariablesValue;
    }
    return map;
  }

  factory ExampleMessageChunk.fromMap(Map<String, dynamic> map) {
    return ExampleMessageChunk(
      agentTransfer: map['agentTransfer'] == null
          ? null
          : ExampleMessageChunkAgentTransfer.fromMap(
              (map['agentTransfer'] as Map).cast<String, dynamic>()),
      image: map['image'] == null
          ? null
          : ExampleMessageChunkImage.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
      text: map['text'] == null ? null : map['text'] as String,
      toolCall: map['toolCall'] == null
          ? null
          : ExampleMessageChunkToolCall.fromMap(
              (map['toolCall'] as Map).cast<String, dynamic>()),
      toolResponse: map['toolResponse'] == null
          ? null
          : ExampleMessageChunkToolResponse.fromMap(
              (map['toolResponse'] as Map).cast<String, dynamic>()),
      updatedVariables: map['updatedVariables'] == null
          ? null
          : map['updatedVariables'] as String,
    );
  }
}
