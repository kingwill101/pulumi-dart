// ignore_for_file: unused_element, unnecessary_cast


/// Cert-Manager issuerRef properties
class CertManagerIssuerRef {
  /// group of issuer.
  final String group;
  /// kind of issuer (Issuer or ClusterIssuer).
  final String kind;
  /// name of issuer.
  final String name;

  /// Creates a new [CertManagerIssuerRef].
  /// [group] group of issuer.
  /// [kind] kind of issuer (Issuer or ClusterIssuer).
  /// [name] name of issuer.
  CertManagerIssuerRef({
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

  factory CertManagerIssuerRef.fromMap(Map<String, dynamic> map) {
    return CertManagerIssuerRef(
      group: map['group'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}

