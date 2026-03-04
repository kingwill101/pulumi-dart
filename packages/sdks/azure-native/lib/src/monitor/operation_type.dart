/// the operation associated with the notification and its value must be "scale"
enum OperationType {
  valueScale("Scale");

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
