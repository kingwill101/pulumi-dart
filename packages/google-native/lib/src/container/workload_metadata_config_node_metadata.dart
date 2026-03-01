/// NodeMetadata is the configuration for how to expose metadata to the workloads running on the node.
enum WorkloadMetadataConfigNodeMetadata {
  unspecified("UNSPECIFIED"),
  secure("SECURE"),
  expose("EXPOSE"),
  gkeMetadataServer("GKE_METADATA_SERVER");

  const WorkloadMetadataConfigNodeMetadata(this.value);
  final String value;

  static WorkloadMetadataConfigNodeMetadata fromValue(String value) {
    for (final item in WorkloadMetadataConfigNodeMetadata.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown WorkloadMetadataConfigNodeMetadata value: $value',
    );
  }
}
