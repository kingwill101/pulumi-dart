/// Type of operation.
enum OperationType {
  source("Source"),
  destination("Destination"),
  builtInTransformation("BuiltInTransformation");

  const OperationType(this.wireValue);
  final String wireValue;

  static OperationType fromValue(String value) {
    for (final item in OperationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationType value: $value');
  }
}
