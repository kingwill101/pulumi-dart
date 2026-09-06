// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cert-Manager issuerRef properties
class CertManagerIssuerRefResponse {
  /// group of issuer.
  final pulumi.Input<String> group;
  /// kind of issuer (Issuer or ClusterIssuer).
  final pulumi.Input<String> kind;
  /// name of issuer.
  final pulumi.Input<String> name;

  /// Creates a new [CertManagerIssuerRefResponse].
  /// [group] group of issuer.
  /// [kind] kind of issuer (Issuer or ClusterIssuer).
  /// [name] name of issuer.
  CertManagerIssuerRefResponse({
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

  factory CertManagerIssuerRefResponse.fromMap(Map<String, dynamic> map) {
    return CertManagerIssuerRefResponse(
      group: pulumi.Input.fromValue(map['group'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
