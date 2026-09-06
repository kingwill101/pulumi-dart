import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ComplianceSeverity implements pulumi.PulumiEnum<String> {
  cRITICAL("CRITICAL"),
  hIGH("HIGH"),
  iNFORMATIONAL("INFORMATIONAL"),
  lOW("LOW"),
  mEDIUM("MEDIUM"),
  uNSPECIFIED("UNSPECIFIED");

  const ComplianceSeverity(this.wireValue);
  @override
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
