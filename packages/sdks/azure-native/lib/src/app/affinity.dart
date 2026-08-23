/// Sticky Session Affinity
enum Affinity {
  valueSticky("sticky"),
  valueNone("none");

  const Affinity(this.wireValue);
  final String wireValue;

  static Affinity fromValue(String value) {
    for (final item in Affinity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Affinity value: $value');
  }
}
