/// How tasks should be distributed across compute nodes.
enum ComputeNodeFillType {
  spread("Spread"),
  pack("Pack");

  const ComputeNodeFillType(this.wireValue);
  final String wireValue;

  static ComputeNodeFillType fromValue(String value) {
    for (final item in ComputeNodeFillType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeNodeFillType value: $value');
  }
}

