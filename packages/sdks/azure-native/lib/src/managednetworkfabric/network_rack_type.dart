/// Network Rack SKU name.
enum NetworkRackType {
  valueAggregate("Aggregate"),
  valueCompute("Compute"),
  valueCombined("Combined");

  const NetworkRackType(this.wireValue);
  final String wireValue;

  static NetworkRackType fromValue(String value) {
    for (final item in NetworkRackType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRackType value: $value');
  }
}

