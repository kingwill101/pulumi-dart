// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreMemoryIndexedKey {
  /// Metadata key name to index.
  final pulumi.Input<String> key;
  /// Data type of the indexed key. Valid values are `STRING`, `STRINGLIST`, and `NUMBER`.
  final pulumi.Input<String> type;

  /// Creates a new [AgentcoreMemoryIndexedKey].
  /// [key] Metadata key name to index.
  /// [type] Data type of the indexed key. Valid values are `STRING`, `STRINGLIST`, and `NUMBER`.
  const AgentcoreMemoryIndexedKey({
    required this.key,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'type': type,
    };
  }

  factory AgentcoreMemoryIndexedKey.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryIndexedKey(
      key: pulumi.Input.fromValue(map['key'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
