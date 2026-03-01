/// Re-Do Operation
enum OperationType {
  valueInvalid("Invalid"),
  valueRegister("Register"),
  valueReregister("Reregister"),
  valueRehydrate("Rehydrate");

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

