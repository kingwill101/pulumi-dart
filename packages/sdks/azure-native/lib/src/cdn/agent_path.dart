// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a path configuration for a web agent.
class AgentPath {
  /// The actual path value.
  final pulumi.Input<String> path;
  /// The type of the path.
  final pulumi.Input<String> type;

  /// Creates a new [AgentPath].
  /// [path] The actual path value.
  /// [type] The type of the path.
  AgentPath({
    required this.path,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'type': type,
    };
  }

  factory AgentPath.fromMap(Map<String, dynamic> map) {
    return AgentPath(
      path: (map['path'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

