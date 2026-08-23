// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceConfigurationResourceConfigurationDefinitionDnsResource {
  /// Hostname of the Resource for this configuration.
  final pulumi.Input<String> domainName;
  /// IP Address type either `IPV4` or `IPV6`
  final pulumi.Input<String> ipAddressType;

  /// Creates a new [ResourceConfigurationResourceConfigurationDefinitionDnsResource].
  /// [domainName] Hostname of the Resource for this configuration.
  /// [ipAddressType] IP Address type either `IPV4` or `IPV6`
  const ResourceConfigurationResourceConfigurationDefinitionDnsResource({
    required this.domainName,
    required this.ipAddressType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'ipAddressType': ipAddressType,
    };
  }

  factory ResourceConfigurationResourceConfigurationDefinitionDnsResource.fromMap(Map<String, dynamic> map) {
    return ResourceConfigurationResourceConfigurationDefinitionDnsResource(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      ipAddressType: pulumi.Input.fromValue(map['ipAddressType'] as String),
    );
  }
}
