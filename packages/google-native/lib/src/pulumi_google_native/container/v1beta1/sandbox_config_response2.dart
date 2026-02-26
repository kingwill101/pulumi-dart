// ignore_for_file: unused_element, unnecessary_cast

/// SandboxConfig contains configurations of the sandbox to use for the node.
class SandboxConfigResponse2 {
  /// Type of the sandbox to use for the node (e.g. 'gvisor')
  final String sandboxType;

  /// Type of the sandbox to use for the node.
  final String type;

  SandboxConfigResponse2({
    required this.sandboxType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sandboxType'] = sandboxType;
    map['type'] = type;
    return map;
  }

  factory SandboxConfigResponse2.fromMap(Map<String, dynamic> map) {
    return SandboxConfigResponse2(
      sandboxType: map['sandboxType'] as String,
      type: map['type'] as String,
    );
  }
}
