// ignore_for_file: unused_element, unnecessary_cast

/// WorkloadMetadataConfig defines the metadata configuration to expose to workloads on the node pool.
class WorkloadMetadataConfigResponse2 {
  /// Mode is the configuration for how to expose metadata to workloads running on the node pool.
  final String mode;

  /// NodeMetadata is the configuration for how to expose metadata to the workloads running on the node.
  final String nodeMetadata;

  WorkloadMetadataConfigResponse2({
    required this.mode,
    required this.nodeMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    map['nodeMetadata'] = nodeMetadata;
    return map;
  }

  factory WorkloadMetadataConfigResponse2.fromMap(Map<String, dynamic> map) {
    return WorkloadMetadataConfigResponse2(
      mode: map['mode'] as String,
      nodeMetadata: map['nodeMetadata'] as String,
    );
  }
}
