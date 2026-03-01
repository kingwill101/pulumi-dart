/// Property value
enum CertificateStatus {
  eXPIRED("EXPIRED"),
  fAILED("FAILED"),
  iNACTIVE("INACTIVE"),
  iSSUED("ISSUED"),
  pENDINGVALIDATION("PENDING_VALIDATION"),
  rEVOKED("REVOKED"),
  vALIDATIONTIMEDOUT("VALIDATION_TIMED_OUT");

  const CertificateStatus(this.value);
  final String value;

  static CertificateStatus fromValue(String value) {
    for (final item in CertificateStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateStatus value: $value');
  }
}

