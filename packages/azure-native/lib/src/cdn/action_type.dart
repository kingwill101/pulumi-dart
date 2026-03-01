/// Describes what action to be applied when rule matches
enum ActionType {
  allow("Allow"),
  block("Block"),
  log("Log"),
  redirect("Redirect");

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

