// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'example_message_chunk.dart';

class ExampleMessage {
  /// Content of the message as a series of chunks.
  /// Structure is documented below.
  final List<ExampleMessageChunk>? chunks;

  /// The role within the conversation, e.g., user, agent.
  final String? role;

  /// Creates a new [ExampleMessage].
  /// [chunks] Content of the message as a series of chunks.
  /// [role] The role within the conversation, e.g., user, agent.
  ExampleMessage({
    this.chunks,
    this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final chunksValue = chunks;
    if (chunksValue != null) {
      map['chunks'] =
          pulumi.Input.encodeList<ExampleMessageChunk, Map<String, dynamic>>(
              chunksValue, (value) => value.toMap());
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    return map;
  }

  factory ExampleMessage.fromMap(Map<String, dynamic> map) {
    return ExampleMessage(
      chunks: map['chunks'] == null
          ? null
          : pulumi.Input.decodeList<ExampleMessageChunk>(
              map['chunks'],
              (value) => ExampleMessageChunk.fromMap(
                  (value as Map).cast<String, dynamic>())),
      role: map['role'] == null ? null : map['role'] as String,
    );
  }
}
