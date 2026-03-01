/// Allow or Deny rules to determine for incoming IP. Note: Rules can only consist of ALL Allow or ALL Deny
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

