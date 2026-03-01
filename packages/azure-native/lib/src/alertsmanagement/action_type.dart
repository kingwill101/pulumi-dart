/// Action that should be applied.
enum ActionType {
  valueAddActionGroups("AddActionGroups"),
  valueRemoveAllActionGroups("RemoveAllActionGroups");

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

