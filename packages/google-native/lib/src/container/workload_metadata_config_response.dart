// ignore_for_file: unused_element, unnecessary_cast

/// WorkloadMetadataConfig defines the metadata configuration to expose to workloads on the node pool.
class WorkloadMetadataConfigResponse {
  /// Mode is the configuration for how to expose metadata to workloads running on the node pool.
  final String mode;

  /// Creates a new [WorkloadMetadataConfigResponse].
  /// [mode] Mode is the configuration for how to expose metadata to workloads running on the node pool.
  WorkloadMetadataConfigResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory WorkloadMetadataConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadMetadataConfigResponse(
      mode: map['mode'] as String,
    );
  }
}
