/// Property value
enum CertificateType {
  aMAZONISSUED("AMAZON_ISSUED"),
  iMPORTED("IMPORTED"),
  pRIVATE("PRIVATE");

  const CertificateType(this.value);
  final String value;

  static CertificateType fromValue(String value) {
    for (final item in CertificateType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateType value: $value');
  }
}

