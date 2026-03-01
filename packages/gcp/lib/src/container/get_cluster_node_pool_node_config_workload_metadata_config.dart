// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigWorkloadMetadataConfig {
  /// Mode is the configuration for how to expose metadata to workloads running on the node.
  final String mode;

  /// Creates a new [GetClusterNodePoolNodeConfigWorkloadMetadataConfig].
  /// [mode] Mode is the configuration for how to expose metadata to workloads running on the node.
  GetClusterNodePoolNodeConfigWorkloadMetadataConfig({required this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode};
  }

  factory GetClusterNodePoolNodeConfigWorkloadMetadataConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNodeConfigWorkloadMetadataConfig(
      mode: map['mode'] as String,
    );
  }
}
