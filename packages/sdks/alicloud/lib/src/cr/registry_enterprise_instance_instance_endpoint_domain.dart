// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryEnterpriseInstanceInstanceEndpointDomain {
  /// Domain
  final pulumi.Input<String>? domain;
  /// Domain Type
  final pulumi.Input<String>? type;

  /// Creates a new [RegistryEnterpriseInstanceInstanceEndpointDomain].
  /// [domain] Domain
  /// [type] Domain Type
  RegistryEnterpriseInstanceInstanceEndpointDomain({
    this.domain,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'type': ?type,
    };
  }

  factory RegistryEnterpriseInstanceInstanceEndpointDomain.fromMap(Map<String, dynamic> map) {
    return RegistryEnterpriseInstanceInstanceEndpointDomain(
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

