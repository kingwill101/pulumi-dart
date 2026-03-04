/// Action that should be applied.
enum ActionType {
  valueAddActionGroups("AddActionGroups"),
  valueRemoveAllActionGroups("RemoveAllActionGroups");

  const ActionType(this.wireValue);
  final String wireValue;

  static ActionType fromValue(String value) {
    for (final item in ActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionType value: $value');
  }
}
