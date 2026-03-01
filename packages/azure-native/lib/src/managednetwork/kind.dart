/// Responsibility role under which this Managed Network Group will be created
enum Kind {
  valueConnectivity("Connectivity");

  const Kind(this.value);
  final String value;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}

