/// Type of the affinity, set this to Cookie to enable session affinity.
enum SessionAffinity {
  valueCookie("Cookie"),
  valueNone("None");

  const SessionAffinity(this.wireValue);
  final String wireValue;

  static SessionAffinity fromValue(String value) {
    for (final item in SessionAffinity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionAffinity value: $value');
  }
}
