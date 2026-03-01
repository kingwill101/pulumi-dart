/// Specifies the partition date source for the partitioned prefix. PartitionDateSource can be EventTime or DeliveryTime.
enum PartitionedPrefixPartitionDateSource {
  deliveryTime("DeliveryTime"),
  eventTime("EventTime");

  const PartitionedPrefixPartitionDateSource(this.value);
  final String value;

  static PartitionedPrefixPartitionDateSource fromValue(String value) {
    for (final item in PartitionedPrefixPartitionDateSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartitionedPrefixPartitionDateSource value: $value');
  }
}

