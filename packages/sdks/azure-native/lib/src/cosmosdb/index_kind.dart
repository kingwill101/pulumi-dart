/// Indicates the type of index.
enum IndexKind {
  valueHash("Hash"),
  valueRange("Range"),
  valueSpatial("Spatial");

  const IndexKind(this.value);
  final String value;

  static IndexKind fromValue(String value) {
    for (final item in IndexKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexKind value: $value');
  }
}

