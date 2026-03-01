// ignore_for_file: unused_element, unnecessary_cast


/// Defines a path configuration for a web agent.
class AgentPath {
  /// The actual path value.
  final String path;
  /// The type of the path.
  final String type;

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
      path: map['path'] as String,
      type: map['type'] as String,
    );
  }
}

