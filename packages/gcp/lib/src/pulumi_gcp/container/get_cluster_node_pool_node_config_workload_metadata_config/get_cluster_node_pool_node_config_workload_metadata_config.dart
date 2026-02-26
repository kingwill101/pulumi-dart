// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigWorkloadMetadataConfig {
  /// Mode is the configuration for how to expose metadata to workloads running on the node.
  final String mode;

  GetClusterNodePoolNodeConfigWorkloadMetadataConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory GetClusterNodePoolNodeConfigWorkloadMetadataConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigWorkloadMetadataConfig(
      mode: map['mode'] as String,
    );
  }
}
