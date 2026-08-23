/// Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a ClusterResourcePlacement can tolerate all taints of a particular category.
enum TolerationOperator {
  exists("Exists"),
  equal("Equal");

  const TolerationOperator(this.wireValue);
  final String wireValue;

  static TolerationOperator fromValue(String value) {
    for (final item in TolerationOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TolerationOperator value: $value');
  }
}
