/// The Data Actions that can be enabled for a Smart Identity Provider Application.
enum SmartDataActions {
  valueRead("Read");

  const SmartDataActions(this.value);
  final String value;

  static SmartDataActions fromValue(String value) {
    for (final item in SmartDataActions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SmartDataActions value: $value');
  }
}

