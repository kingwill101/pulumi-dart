// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cert-Manager issuerRef properties
class CertManagerIssuerRef {
  /// group of issuer.
  final pulumi.Input<String> group;
  /// kind of issuer (Issuer or ClusterIssuer).
  final pulumi.Input<String> kind;
  /// name of issuer.
  final pulumi.Input<String> name;

  /// Creates a new [CertManagerIssuerRef].
  /// [group] group of issuer.
  /// [kind] kind of issuer (Issuer or ClusterIssuer).
  /// [name] name of issuer.
  CertManagerIssuerRef({
    pulumi.Input<String>? group,
    required this.kind,
    required this.name,
  }) : group = group ?? pulumi.Input.fromValue('cert-manager.io');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'kind': kind,
      'name': name,
    };
  }

  factory CertManagerIssuerRef.fromMap(Map<String, dynamic> map) {
    return CertManagerIssuerRef(
      group: pulumi.Input.fromValue(map['group'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
