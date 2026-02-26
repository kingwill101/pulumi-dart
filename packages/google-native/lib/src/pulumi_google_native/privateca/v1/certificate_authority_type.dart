/// Required. Immutable. The Type of this CertificateAuthority.
enum CertificateAuthorityType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  selfSigned("SELF_SIGNED"),
  subordinate("SUBORDINATE");

  const CertificateAuthorityType(this.value);
  final String value;

  static CertificateAuthorityType fromValue(String value) {
    for (final item in CertificateAuthorityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateAuthorityType value: $value');
  }
}
