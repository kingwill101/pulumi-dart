/// Mode is the configuration for how to expose metadata to workloads running on the node pool.
enum WorkloadMetadataConfigMode2 {
  modeUnspecified("MODE_UNSPECIFIED"),
  gceMetadata("GCE_METADATA"),
  gkeMetadata("GKE_METADATA");

  const WorkloadMetadataConfigMode2(this.value);
  final String value;

  static WorkloadMetadataConfigMode2 fromValue(String value) {
    for (final item in WorkloadMetadataConfigMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadMetadataConfigMode2 value: $value');
  }
}
