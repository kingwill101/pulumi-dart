/// How tasks should be distributed across compute nodes.
enum ComputeNodeFillType {
  spread("Spread"),
  pack("Pack");

  const ComputeNodeFillType(this.value);
  final String value;

  static ComputeNodeFillType fromValue(String value) {
    for (final item in ComputeNodeFillType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeNodeFillType value: $value');
  }
}

