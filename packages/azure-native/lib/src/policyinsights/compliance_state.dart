/// The compliance state that should be set on the resource.
enum ComplianceState {
  valueCompliant("Compliant"),
  valueNonCompliant("NonCompliant"),
  valueUnknown("Unknown");

  const ComplianceState(this.value);
  final String value;

  static ComplianceState fromValue(String value) {
    for (final item in ComplianceState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComplianceState value: $value');
  }
}

