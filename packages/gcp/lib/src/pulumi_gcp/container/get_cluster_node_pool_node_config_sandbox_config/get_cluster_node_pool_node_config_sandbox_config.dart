// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigSandboxConfig {
  /// Type of the sandbox to use for the node (e.g. 'gvisor')
  final String sandboxType;

  GetClusterNodePoolNodeConfigSandboxConfig({
    required this.sandboxType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sandboxType'] = sandboxType;
    return map;
  }

  factory GetClusterNodePoolNodeConfigSandboxConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigSandboxConfig(
      sandboxType: map['sandboxType'] as String,
    );
  }
}
