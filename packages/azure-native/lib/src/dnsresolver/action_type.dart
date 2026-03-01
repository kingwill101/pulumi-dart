/// The type of action to take.
enum ActionType {
  valueAllow("Allow"),
  valueAlert("Alert"),
  valueBlock("Block");

  const ActionType(this.value);
  final String value;

  static ActionType fromValue(String value) {
    for (final item in ActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionType value: $value');
  }
}

