/// The network traffic is allowed or denied.
enum Access {
  valueAllow("allow"),
  valueDeny("deny");

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

