/// The action of IP ACL rule.
enum Action {
  valueAllow("Allow");

  const Action(this.wireValue);
  final String wireValue;

  static Action fromValue(String value) {
    for (final item in Action.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Action value: $value');
  }
}

