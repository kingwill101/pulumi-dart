import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ScanStatus implements pulumi.PulumiEnum<String> {
  aCTIVE("ACTIVE"),
  cOMPLETE("COMPLETE"),
  fAILED("FAILED"),
  fINDINGSUNAVAILABLE("FINDINGS_UNAVAILABLE"),
  iNPROGRESS("IN_PROGRESS"),
  pENDING("PENDING"),
  sCANELIGIBILITYEXPIRED("SCAN_ELIGIBILITY_EXPIRED"),
  uNSUPPORTEDIMAGE("UNSUPPORTED_IMAGE");

  const ScanStatus(this.wireValue);
  @override
  final String wireValue;

  static ScanStatus fromValue(String value) {
    for (final item in ScanStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanStatus value: $value');
  }
}
