// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigSandboxConfig {
  /// Type of the sandbox to use for the node (e.g. 'gvisor')
  final String sandboxType;

  /// Creates a new [NodePoolNodeConfigSandboxConfig].
  /// [sandboxType] Type of the sandbox to use for the node (e.g. 'gvisor')
  NodePoolNodeConfigSandboxConfig({required this.sandboxType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sandboxType': sandboxType};
  }

  factory NodePoolNodeConfigSandboxConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigSandboxConfig(
      sandboxType: map['sandboxType'] as String,
    );
  }
}
