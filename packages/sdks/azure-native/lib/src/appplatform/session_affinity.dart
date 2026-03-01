/// Type of the affinity, set this to Cookie to enable session affinity.
enum SessionAffinity {
  valueCookie("Cookie"),
  valueNone("None");

  const SessionAffinity(this.value);
  final String value;

  static SessionAffinity fromValue(String value) {
    for (final item in SessionAffinity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionAffinity value: $value');
  }
}

