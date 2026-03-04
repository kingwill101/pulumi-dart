// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a path configuration for a web agent.
class AgentPathResponse {
  /// The actual path value.
  final pulumi.Input<String> path;

  /// The type of the path.
  final pulumi.Input<String> type;

  /// Creates a new [AgentPathResponse].
  /// [path] The actual path value.
  /// [type] The type of the path.
  AgentPathResponse({required this.path, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path, 'type': type};
  }

  factory AgentPathResponse.fromMap(Map<String, dynamic> map) {
    return AgentPathResponse(
      path: pulumi.Input.fromValue(map['path'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
