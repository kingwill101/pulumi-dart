/// Specifies the partition date source for the partitioned prefix. PartitionDateSource can be EventTime or DeliveryTime.
enum PartitionedPrefixPartitionDateSource {
  deliveryTime("DeliveryTime"),
  eventTime("EventTime");

  const PartitionedPrefixPartitionDateSource(this.wireValue);
  final String wireValue;

  static PartitionedPrefixPartitionDateSource fromValue(String value) {
    for (final item in PartitionedPrefixPartitionDateSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PartitionedPrefixPartitionDateSource value: $value',
    );
  }
}
