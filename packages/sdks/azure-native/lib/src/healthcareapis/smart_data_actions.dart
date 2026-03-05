/// The Data Actions that can be enabled for a Smart Identity Provider Application.
enum SmartDataActions {
  valueRead("Read");

  const SmartDataActions(this.wireValue);
  final String wireValue;

  static SmartDataActions fromValue(String value) {
    for (final item in SmartDataActions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SmartDataActions value: $value');
  }
}

