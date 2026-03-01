// ignore_for_file: unused_element, unnecessary_cast


/// Cert-Manager issuerRef properties
class CertManagerIssuerRefResponse {
  /// group of issuer.
  final String group;
  /// kind of issuer (Issuer or ClusterIssuer).
  final String kind;
  /// name of issuer.
  final String name;

  /// Creates a new [CertManagerIssuerRefResponse].
  /// [group] group of issuer.
  /// [kind] kind of issuer (Issuer or ClusterIssuer).
  /// [name] name of issuer.
  CertManagerIssuerRefResponse({
    required this.group,
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'kind': kind,
      'name': name,
    };
  }

  factory CertManagerIssuerRefResponse.fromMap(Map<String, dynamic> map) {
    return CertManagerIssuerRefResponse(
      group: map['group'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}

