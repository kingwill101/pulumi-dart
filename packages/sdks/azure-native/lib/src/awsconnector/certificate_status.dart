import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum CertificateStatus implements pulumi.PulumiEnum<String> {
  eXPIRED("EXPIRED"),
  fAILED("FAILED"),
  iNACTIVE("INACTIVE"),
  iSSUED("ISSUED"),
  pENDINGVALIDATION("PENDING_VALIDATION"),
  rEVOKED("REVOKED"),
  vALIDATIONTIMEDOUT("VALIDATION_TIMED_OUT");

  const CertificateStatus(this.wireValue);
  @override
  final String wireValue;

  static CertificateStatus fromValue(String value) {
    for (final item in CertificateStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateStatus value: $value');
  }
}
