/// The active state
enum EdgeActionIsDefaultVersion {
  true_("True"),
  false_("False");

  const EdgeActionIsDefaultVersion(this.value);
  final String value;

  static EdgeActionIsDefaultVersion fromValue(String value) {
    for (final item in EdgeActionIsDefaultVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeActionIsDefaultVersion value: $value');
  }
}

