/// kind of issuer (Issuer or ClusterIssuer).
enum CertManagerIssuerKind {
  issuer("Issuer"),
  clusterIssuer("ClusterIssuer");

  const CertManagerIssuerKind(this.value);
  final String value;

  static CertManagerIssuerKind fromValue(String value) {
    for (final item in CertManagerIssuerKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertManagerIssuerKind value: $value');
  }
}

