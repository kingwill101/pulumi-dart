// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_example_message_chunk/app_version_snapshot_example_message_chunk.dart';

class AppVersionSnapshotExampleMessage {
  /// (Output)
  /// Content of the message as a series of chunks.
  /// Structure is documented below.
  final List<AppVersionSnapshotExampleMessageChunk>? chunks;

  /// (Output)
  /// The role within the conversation, e.g., user, agent.
  final String? role;

  AppVersionSnapshotExampleMessage({
    this.chunks,
    this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final chunksValue = chunks;
    if (chunksValue != null) {
      map['chunks'] = Input.encodeList<AppVersionSnapshotExampleMessageChunk,
          Map<String, dynamic>>(chunksValue, (value) => value.toMap());
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    return map;
  }

  factory AppVersionSnapshotExampleMessage.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessage(
      chunks: map['chunks'] == null
          ? null
          : Input.decodeList<AppVersionSnapshotExampleMessageChunk>(
              map['chunks'],
              (value) => AppVersionSnapshotExampleMessageChunk.fromMap(
                  (value as Map).cast<String, dynamic>())),
      role: map['role'] == null ? null : map['role'] as String,
    );
  }
}
