/// Optional. The structure of paths containing partition data within the entity.
enum GoogleCloudDataplexV1SchemaPartitionStyle {
  partitionStyleUnspecified("PARTITION_STYLE_UNSPECIFIED"),
  hiveCompatible("HIVE_COMPATIBLE");

  const GoogleCloudDataplexV1SchemaPartitionStyle(this.value);
  final String value;

  static GoogleCloudDataplexV1SchemaPartitionStyle fromValue(String value) {
    for (final item in GoogleCloudDataplexV1SchemaPartitionStyle.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDataplexV1SchemaPartitionStyle value: $value');
  }
}

