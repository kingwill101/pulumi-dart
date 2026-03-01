// ignore_for_file: unused_element, unnecessary_cast


class FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig {
  /// Number of milliseconds for which to keep the storage for a partition.
  final String? expirationMs;
  /// Type of partitioning.
  /// Possible values are: `PARTITION_TYPE_UNSPECIFIED`, `HOUR`, `DAY`, `MONTH`, `YEAR`.
  final String type;

  /// Creates a new [FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig].
  /// [expirationMs] Number of milliseconds for which to keep the storage for a partition.
  /// [type] Type of partitioning.
  FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig({
    this.expirationMs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationMs': ?expirationMs,
      'type': type,
    };
  }

  factory FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig.fromMap(Map<String, dynamic> map) {
    return FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig(
      expirationMs: map['expirationMs'] == null ? null : map['expirationMs'] as String,
      type: map['type'] as String,
    );
  }
}

