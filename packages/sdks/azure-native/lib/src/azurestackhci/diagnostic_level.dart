/// Desired level of diagnostic data emitted by the cluster.
enum DiagnosticLevel {
  valueOff("Off"),
  valueBasic("Basic"),
  valueEnhanced("Enhanced");

  const DiagnosticLevel(this.value);
  final String value;

  static DiagnosticLevel fromValue(String value) {
    for (final item in DiagnosticLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiagnosticLevel value: $value');
  }
}

