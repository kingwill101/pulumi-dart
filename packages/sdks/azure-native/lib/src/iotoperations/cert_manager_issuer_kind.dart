/// kind of issuer (Issuer or ClusterIssuer).
enum CertManagerIssuerKind {
  issuer("Issuer"),
  clusterIssuer("ClusterIssuer");

  const CertManagerIssuerKind(this.wireValue);
  final String wireValue;

  static CertManagerIssuerKind fromValue(String value) {
    for (final item in CertManagerIssuerKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertManagerIssuerKind value: $value');
  }
}
