/// The access type of the rule.
enum Access {
  valueAllow("Allow"),
  valueDeny("Deny");

  const Access(this.value);
  final String value;

  static Access fromValue(String value) {
    for (final item in Access.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Access value: $value');
  }
}

