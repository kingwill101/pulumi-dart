// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Record map for schema in azure monitor.
class RecordMap {
  /// Record Map Key.
  final pulumi.Input<String> from;

  /// Record Map Value.
  final pulumi.Input<String> to;

  /// Creates a new [RecordMap].
  /// [from] Record Map Key.
  /// [to] Record Map Value.
  RecordMap({required this.from, required this.to});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': from, 'to': to};
  }

  factory RecordMap.fromMap(Map<String, dynamic> map) {
    return RecordMap(
      from: pulumi.Input.fromValue(map['from'] as String),
      to: pulumi.Input.fromValue(map['to'] as String),
    );
  }
}
