// ignore_for_file: unused_element, unnecessary_cast


class RegistryEnterpriseInstanceInstanceEndpointDomain {
  /// Domain
  final String? domain;
  /// Domain Type
  final String? type;

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
      domain: map['domain'] == null ? null : map['domain'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

