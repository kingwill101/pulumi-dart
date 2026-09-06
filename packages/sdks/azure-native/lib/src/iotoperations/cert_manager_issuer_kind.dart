import 'package:pulumi/pulumi.dart' as pulumi;

/// kind of issuer (Issuer or ClusterIssuer).
enum CertManagerIssuerKind implements pulumi.PulumiEnum<String> {
  issuer("Issuer"),
  clusterIssuer("ClusterIssuer");

  const CertManagerIssuerKind(this.wireValue);
  @override
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
