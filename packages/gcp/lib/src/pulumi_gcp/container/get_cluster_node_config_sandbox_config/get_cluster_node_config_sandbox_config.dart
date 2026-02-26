// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigSandboxConfig {
  /// Type of the sandbox to use for the node (e.g. 'gvisor')
  final String sandboxType;

  GetClusterNodeConfigSandboxConfig({
    required this.sandboxType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sandboxType'] = sandboxType;
    return map;
  }

  factory GetClusterNodeConfigSandboxConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigSandboxConfig(
      sandboxType: map['sandboxType'] as String,
    );
  }
}
