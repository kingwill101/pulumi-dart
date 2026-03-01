// ignore_for_file: unused_element, unnecessary_cast

class ResourceConfigurationResourceConfigurationDefinitionDnsResource {
  /// The hostname of the Resource for this configuration.
  final String domainName;

  /// The IP Address type either `IPV4` or `IPV6`
  final String ipAddressType;

  /// Creates a new [ResourceConfigurationResourceConfigurationDefinitionDnsResource].
  /// [domainName] The hostname of the Resource for this configuration.
  /// [ipAddressType] The IP Address type either `IPV4` or `IPV6`
  ResourceConfigurationResourceConfigurationDefinitionDnsResource({
    required this.domainName,
    required this.ipAddressType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'ipAddressType': ipAddressType,
    };
  }

  factory ResourceConfigurationResourceConfigurationDefinitionDnsResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceConfigurationResourceConfigurationDefinitionDnsResource(
      domainName: map['domainName'] as String,
      ipAddressType: map['ipAddressType'] as String,
    );
  }
}
