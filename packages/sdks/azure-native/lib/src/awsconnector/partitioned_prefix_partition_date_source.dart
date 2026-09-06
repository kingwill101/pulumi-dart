import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the partition date source for the partitioned prefix. PartitionDateSource can be EventTime or DeliveryTime.
enum PartitionedPrefixPartitionDateSource implements pulumi.PulumiEnum<String> {
  deliveryTime("DeliveryTime"),
  eventTime("EventTime");

  const PartitionedPrefixPartitionDateSource(this.wireValue);
  @override
  final String wireValue;

  static PartitionedPrefixPartitionDateSource fromValue(String value) {
    for (final item in PartitionedPrefixPartitionDateSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartitionedPrefixPartitionDateSource value: $value');
  }
}
