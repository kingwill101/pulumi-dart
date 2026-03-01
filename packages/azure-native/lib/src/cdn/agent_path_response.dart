// ignore_for_file: unused_element, unnecessary_cast


/// Defines a path configuration for a web agent.
class AgentPathResponse {
  /// The actual path value.
  final String path;
  /// The type of the path.
  final String type;

  /// Creates a new [AgentPathResponse].
  /// [path] The actual path value.
  /// [type] The type of the path.
  AgentPathResponse({
    required this.path,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'type': type,
    };
  }

  factory AgentPathResponse.fromMap(Map<String, dynamic> map) {
    return AgentPathResponse(
      path: map['path'] as String,
      type: map['type'] as String,
    );
  }
}

