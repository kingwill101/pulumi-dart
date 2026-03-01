/// The action of virtual network rule.
enum Action {
  valueAllow("Allow");

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

