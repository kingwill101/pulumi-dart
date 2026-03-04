/// Compliance standard that can be associated with a workspace.
enum ComplianceStandard {
  valueNONE("NONE"),
  valueHIPAA("HIPAA"),
  valuePCIDSS("PCI_DSS");

  const ComplianceStandard(this.wireValue);
  final String wireValue;

  static ComplianceStandard fromValue(String value) {
    for (final item in ComplianceStandard.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComplianceStandard value: $value');
  }
}
