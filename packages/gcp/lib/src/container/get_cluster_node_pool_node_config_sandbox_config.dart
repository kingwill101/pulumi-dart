// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodePoolNodeConfigSandboxConfig {
  /// Type of the sandbox to use for the node (e.g. 'gvisor')
  final String sandboxType;

  /// Creates a new [GetClusterNodePoolNodeConfigSandboxConfig].
  /// [sandboxType] Type of the sandbox to use for the node (e.g. 'gvisor')
  GetClusterNodePoolNodeConfigSandboxConfig({
    required this.sandboxType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sandboxType': sandboxType,
    };
  }

  factory GetClusterNodePoolNodeConfigSandboxConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigSandboxConfig(
      sandboxType: map['sandboxType'] as String,
    );
  }
}

