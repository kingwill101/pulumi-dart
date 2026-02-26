/// Type of partitioning.
enum TimePartitioningType2 {
  partitionTypeUnspecified("PARTITION_TYPE_UNSPECIFIED"),
  hour("HOUR"),
  day("DAY"),
  month("MONTH"),
  year("YEAR");

  const TimePartitioningType2(this.value);
  final String value;

  static TimePartitioningType2 fromValue(String value) {
    for (final item in TimePartitioningType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimePartitioningType2 value: $value');
  }
}
