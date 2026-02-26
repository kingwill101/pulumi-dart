/// Status of the certificate
enum CertificateCertificateStatus {
  stateUnspecified("STATE_UNSPECIFIED"),
  active("ACTIVE"),
  expired("EXPIRED");

  const CertificateCertificateStatus(this.value);
  final String value;

  static CertificateCertificateStatus fromValue(String value) {
    for (final item in CertificateCertificateStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateCertificateStatus value: $value');
  }
}
