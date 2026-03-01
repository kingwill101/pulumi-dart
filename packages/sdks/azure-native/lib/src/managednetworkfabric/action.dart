/// Specify action.
enum Action {
  valueAllow("Allow"),
  valueDeny("Deny");

  const Action(this.value);
  final String value;

  static Action fromValue(String value) {
    for (final item in Action.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Action value: $value');
  }
}

