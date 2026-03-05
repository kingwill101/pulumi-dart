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
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

