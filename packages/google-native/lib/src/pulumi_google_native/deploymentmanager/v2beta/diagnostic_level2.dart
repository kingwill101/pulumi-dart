/// Level to record this diagnostic.
enum DiagnosticLevel2 {
  unknown("UNKNOWN"),
  information("INFORMATION"),
  warning("WARNING"),
  error("ERROR");

  const DiagnosticLevel2(this.value);
  final String value;

  static DiagnosticLevel2 fromValue(String value) {
    for (final item in DiagnosticLevel2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiagnosticLevel2 value: $value');
  }
}
