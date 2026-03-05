/// Property value
enum CertificateStatus {
  eXPIRED("EXPIRED"),
  fAILED("FAILED"),
  iNACTIVE("INACTIVE"),
  iSSUED("ISSUED"),
  pENDINGVALIDATION("PENDING_VALIDATION"),
  rEVOKED("REVOKED"),
  vALIDATIONTIMEDOUT("VALIDATION_TIMED_OUT");

  const CertificateStatus(this.wireValue);
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

