// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigWorkloadMetadataConfig {
  /// Mode is the configuration for how to expose metadata to workloads running on the node.
  final String mode;

  GetClusterNodeConfigWorkloadMetadataConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory GetClusterNodeConfigWorkloadMetadataConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigWorkloadMetadataConfig(
      mode: map['mode'] as String,
    );
  }
}
