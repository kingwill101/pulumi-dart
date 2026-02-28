// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigSandboxConfig {
  /// Which sandbox to use for pods in the node pool.
  /// Accepted values are:
  ///
  /// * `"gvisor"`: Pods run within a gVisor sandbox.
  final String sandboxType;

  /// Creates a new [ClusterNodeConfigSandboxConfig].
  /// [sandboxType] Which sandbox to use for pods in the node pool.
  ClusterNodeConfigSandboxConfig({
    required this.sandboxType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sandboxType'] = sandboxType;
    return map;
  }

  factory ClusterNodeConfigSandboxConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigSandboxConfig(
      sandboxType: map['sandboxType'] as String,
    );
  }
}
