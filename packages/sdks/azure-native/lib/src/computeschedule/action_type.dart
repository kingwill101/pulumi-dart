/// The action the scheduled action should perform in the resources
enum ActionType {
  start("Start"),
  deallocate("Deallocate"),
  hibernate("Hibernate");

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
