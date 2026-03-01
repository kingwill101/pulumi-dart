/// Storage target operational state.
enum OperationalStateType {
  valueReady("Ready"),
  valueBusy("Busy"),
  valueSuspended("Suspended"),
  valueFlushing("Flushing");

  const OperationalStateType(this.value);
  final String value;

  static OperationalStateType fromValue(String value) {
    for (final item in OperationalStateType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationalStateType value: $value');
  }
}

