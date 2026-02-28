/// Mode is the configuration for how to expose metadata to workloads running on the node pool.
enum WorkloadMetadataConfigMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  gceMetadata("GCE_METADATA"),
  gkeMetadata("GKE_METADATA");

  const WorkloadMetadataConfigMode(this.value);
  final String value;

  static WorkloadMetadataConfigMode fromValue(String value) {
    for (final item in WorkloadMetadataConfigMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadMetadataConfigMode value: $value');
  }
}

