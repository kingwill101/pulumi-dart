/// Threats impact of the assessment
enum Threats {
  valueAccountBreach("accountBreach"),
  valueDataExfiltration("dataExfiltration"),
  valueDataSpillage("dataSpillage"),
  valueMaliciousInsider("maliciousInsider"),
  valueElevationOfPrivilege("elevationOfPrivilege"),
  valueThreatResistance("threatResistance"),
  valueMissingCoverage("missingCoverage"),
  valueDenialOfService("denialOfService");

  const Threats(this.value);
  final String value;

  static Threats fromValue(String value) {
    for (final item in Threats.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Threats value: $value');
  }
}

