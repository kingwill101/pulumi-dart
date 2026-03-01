/// Type of partitioning.
enum TimePartitioningTypeHealthcareV1beta1 {
  partitionTypeUnspecified("PARTITION_TYPE_UNSPECIFIED"),
  hour("HOUR"),
  day("DAY"),
  month("MONTH"),
  year("YEAR");

  const TimePartitioningTypeHealthcareV1beta1(this.value);
  final String value;

  static TimePartitioningTypeHealthcareV1beta1 fromValue(String value) {
    for (final item in TimePartitioningTypeHealthcareV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown TimePartitioningTypeHealthcareV1beta1 value: $value',
    );
  }
}
