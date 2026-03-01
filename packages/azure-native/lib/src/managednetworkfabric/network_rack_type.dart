/// Network Rack SKU name.
enum NetworkRackType {
  valueAggregate("Aggregate"),
  valueCompute("Compute"),
  valueCombined("Combined");

  const NetworkRackType(this.value);
  final String value;

  static NetworkRackType fromValue(String value) {
    for (final item in NetworkRackType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRackType value: $value');
  }
}

