/// Property value
enum ComplianceStatus {
  cOMPLIANT("COMPLIANT"),
  nONCOMPLIANT("NON_COMPLIANT");

  const ComplianceStatus(this.wireValue);
  final String wireValue;

  static ComplianceStatus fromValue(String value) {
    for (final item in ComplianceStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComplianceStatus value: $value');
  }
}

