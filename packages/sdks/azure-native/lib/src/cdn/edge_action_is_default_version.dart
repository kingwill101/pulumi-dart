/// The active state
enum EdgeActionIsDefaultVersion {
  true_("True"),
  false_("False");

  const EdgeActionIsDefaultVersion(this.wireValue);
  final String wireValue;

  static EdgeActionIsDefaultVersion fromValue(String value) {
    for (final item in EdgeActionIsDefaultVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeActionIsDefaultVersion value: $value');
  }
}
