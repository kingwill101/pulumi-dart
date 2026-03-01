// ignore_for_file: unused_element, unnecessary_cast


class NodePoolNodeConfigWorkloadMetadataConfig {
  /// Mode is the configuration for how to expose metadata to workloads running on the node.
  final String mode;

  /// Creates a new [NodePoolNodeConfigWorkloadMetadataConfig].
  /// [mode] Mode is the configuration for how to expose metadata to workloads running on the node.
  NodePoolNodeConfigWorkloadMetadataConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory NodePoolNodeConfigWorkloadMetadataConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigWorkloadMetadataConfig(
      mode: map['mode'] as String,
    );
  }
}

