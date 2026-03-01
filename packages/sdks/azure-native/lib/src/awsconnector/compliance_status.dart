/// Property value
enum ComplianceStatus {
  cOMPLIANT("COMPLIANT"),
  nONCOMPLIANT("NON_COMPLIANT");

  const ComplianceStatus(this.value);
  final String value;

  static ComplianceStatus fromValue(String value) {
    for (final item in ComplianceStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComplianceStatus value: $value');
  }
}

