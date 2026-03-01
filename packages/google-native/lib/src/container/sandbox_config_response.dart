// ignore_for_file: unused_element, unnecessary_cast

/// SandboxConfig contains configurations of the sandbox to use for the node.
class SandboxConfigResponse {
  /// Type of the sandbox to use for the node.
  final String type;

  /// Creates a new [SandboxConfigResponse].
  /// [type] Type of the sandbox to use for the node.
  SandboxConfigResponse({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory SandboxConfigResponse.fromMap(Map<String, dynamic> map) {
    return SandboxConfigResponse(type: map['type'] as String);
  }
}
