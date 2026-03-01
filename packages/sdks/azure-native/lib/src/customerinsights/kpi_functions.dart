/// The computation function for the KPI.
enum KpiFunctions {
  valueSum("Sum"),
  valueAvg("Avg"),
  valueMin("Min"),
  valueMax("Max"),
  valueLast("Last"),
  valueCount("Count"),
  valueNone("None"),
  valueCountDistinct("CountDistinct");

  const KpiFunctions(this.value);
  final String value;

  static KpiFunctions fromValue(String value) {
    for (final item in KpiFunctions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KpiFunctions value: $value');
  }
}

