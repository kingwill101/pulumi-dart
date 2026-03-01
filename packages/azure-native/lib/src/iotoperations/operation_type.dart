/// Type of operation.
enum OperationType {
  source("Source"),
  destination("Destination"),
  builtInTransformation("BuiltInTransformation");

  const OperationType(this.value);
  final String value;

  static OperationType fromValue(String value) {
    for (final item in OperationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationType value: $value');
  }
}

