/// Type of partitioning.
enum TimePartitioningType {
  partitionTypeUnspecified("PARTITION_TYPE_UNSPECIFIED"),
  hour("HOUR"),
  day("DAY"),
  month("MONTH"),
  year("YEAR");

  const TimePartitioningType(this.value);
  final String value;

  static TimePartitioningType fromValue(String value) {
    for (final item in TimePartitioningType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimePartitioningType value: $value');
  }
}

