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

  const KpiFunctions(this.wireValue);
  final String wireValue;

  static KpiFunctions fromValue(String value) {
    for (final item in KpiFunctions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KpiFunctions value: $value');
  }
}

