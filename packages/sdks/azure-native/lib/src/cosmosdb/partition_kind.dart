/// Indicates the kind of algorithm used for partitioning. For MultiHash, multiple partition keys (upto three maximum) are supported for container create
enum PartitionKind {
  valueHash("Hash"),
  valueRange("Range"),
  valueMultiHash("MultiHash");

  const PartitionKind(this.value);
  final String value;

  static PartitionKind fromValue(String value) {
    for (final item in PartitionKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartitionKind value: $value');
  }
}

