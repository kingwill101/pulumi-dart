// ignore_for_file: unused_element, unnecessary_cast

class ResourceConfigurationResourceConfigurationDefinitionDnsResource {
  /// The hostname of the Resource for this configuration.
  final String domainName;

  /// The IP Address type either `IPV4` or `IPV6`
  final String ipAddressType;

  ResourceConfigurationResourceConfigurationDefinitionDnsResource({
    required this.domainName,
    required this.ipAddressType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['ipAddressType'] = ipAddressType;
    return map;
  }

  factory ResourceConfigurationResourceConfigurationDefinitionDnsResource.fromMap(
      Map<String, dynamic> map) {
    return ResourceConfigurationResourceConfigurationDefinitionDnsResource(
      domainName: map['domainName'] as String,
      ipAddressType: map['ipAddressType'] as String,
    );
  }
}
