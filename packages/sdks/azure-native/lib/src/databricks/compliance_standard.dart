import 'package:pulumi/pulumi.dart' as pulumi;

/// Compliance standard that can be associated with a workspace.
enum ComplianceStandard implements pulumi.PulumiEnum<String> {
  valueNONE("NONE"),
  valueHIPAA("HIPAA"),
  valuePCIDSS("PCI_DSS"),
  valueCYBERESSENTIALPLUS("CYBER_ESSENTIAL_PLUS"),
  valueFEDRAMPHIGH("FEDRAMP_HIGH"),
  valueCANADAPROTECTEDB("CANADA_PROTECTED_B"),
  valueIRAPPROTECTED("IRAP_PROTECTED"),
  valueISMAP("ISMAP"),
  valueHITRUST("HITRUST"),
  valueKFSI("K_FSI");

  const ComplianceStandard(this.wireValue);
  @override
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
