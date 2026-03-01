/// Sticky Session Affinity
enum Affinity {
  valueSticky("sticky"),
  valueNone("none");

  const Affinity(this.value);
  final String value;

  static Affinity fromValue(String value) {
    for (final item in Affinity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Affinity value: $value');
  }
}

