// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodeConfigWorkloadMetadataConfig {
  /// Mode is the configuration for how to expose metadata to workloads running on the node.
  final String mode;

  /// Creates a new [GetClusterNodeConfigWorkloadMetadataConfig].
  /// [mode] Mode is the configuration for how to expose metadata to workloads running on the node.
  GetClusterNodeConfigWorkloadMetadataConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetClusterNodeConfigWorkloadMetadataConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigWorkloadMetadataConfig(
      mode: map['mode'] as String,
    );
  }
}

