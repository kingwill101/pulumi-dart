/// the operation associated with the notification and its value must be "scale"
enum OperationType {
  valueScale("Scale");

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

