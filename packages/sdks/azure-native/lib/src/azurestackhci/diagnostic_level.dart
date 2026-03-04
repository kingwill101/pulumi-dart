/// Desired level of diagnostic data emitted by the cluster.
enum DiagnosticLevel {
  valueOff("Off"),
  valueBasic("Basic"),
  valueEnhanced("Enhanced");

  const DiagnosticLevel(this.wireValue);
  final String wireValue;

  static DiagnosticLevel fromValue(String value) {
    for (final item in DiagnosticLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiagnosticLevel value: $value');
  }
}
