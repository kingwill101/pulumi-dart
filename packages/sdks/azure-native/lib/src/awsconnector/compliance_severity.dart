/// Property value
enum ComplianceSeverity {
  cRITICAL("CRITICAL"),
  hIGH("HIGH"),
  iNFORMATIONAL("INFORMATIONAL"),
  lOW("LOW"),
  mEDIUM("MEDIUM"),
  uNSPECIFIED("UNSPECIFIED");

  const ComplianceSeverity(this.wireValue);
  final String wireValue;

  static ComplianceSeverity fromValue(String value) {
    for (final item in ComplianceSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComplianceSeverity value: $value');
  }
}
