// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigSandboxConfig {
  /// Which sandbox to use for pods in the node pool.
  /// Accepted values are:
  ///
  /// * `"gvisor"`: Pods run within a gVisor sandbox.
  final String sandboxType;

  /// Creates a new [ClusterNodePoolNodeConfigSandboxConfig].
  /// [sandboxType] Which sandbox to use for pods in the node pool.
  ClusterNodePoolNodeConfigSandboxConfig({
    required this.sandboxType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sandboxType'] = sandboxType;
    return map;
  }

  factory ClusterNodePoolNodeConfigSandboxConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigSandboxConfig(
      sandboxType: map['sandboxType'] as String,
    );
  }
}
