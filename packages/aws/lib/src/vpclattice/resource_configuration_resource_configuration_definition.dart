// ignore_for_file: unused_element, unnecessary_cast

import 'resource_configuration_resource_configuration_definition_arn_resource.dart';
import 'resource_configuration_resource_configuration_definition_dns_resource.dart';
import 'resource_configuration_resource_configuration_definition_ip_resource.dart';

class ResourceConfigurationResourceConfigurationDefinition {
  /// Resource DNS Configuration. See `arn_resource` Block for details.
  final ResourceConfigurationResourceConfigurationDefinitionArnResource?
  arnResource;

  /// Resource DNS Configuration. See `dns_resource` Block for details.
  final ResourceConfigurationResourceConfigurationDefinitionDnsResource?
  dnsResource;

  /// Resource DNS Configuration. See `ip_resource` Block for details.
  final ResourceConfigurationResourceConfigurationDefinitionIpResource?
  ipResource;

  /// Creates a new [ResourceConfigurationResourceConfigurationDefinition].
  /// [arnResource] Resource DNS Configuration. See `arn_resource` Block for details.
  /// [dnsResource] Resource DNS Configuration. See `dns_resource` Block for details.
  /// [ipResource] Resource DNS Configuration. See `ip_resource` Block for details.
  ResourceConfigurationResourceConfigurationDefinition({
    this.arnResource,
    this.dnsResource,
    this.ipResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arnResource': ?arnResource == null ? null : arnResource!.toMap(),
      'dnsResource': ?dnsResource == null ? null : dnsResource!.toMap(),
      'ipResource': ?ipResource == null ? null : ipResource!.toMap(),
    };
  }

  factory ResourceConfigurationResourceConfigurationDefinition.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceConfigurationResourceConfigurationDefinition(
      arnResource: map['arnResource'] == null
          ? null
          : ResourceConfigurationResourceConfigurationDefinitionArnResource.fromMap(
              (map['arnResource'] as Map).cast<String, dynamic>(),
            ),
      dnsResource: map['dnsResource'] == null
          ? null
          : ResourceConfigurationResourceConfigurationDefinitionDnsResource.fromMap(
              (map['dnsResource'] as Map).cast<String, dynamic>(),
            ),
      ipResource: map['ipResource'] == null
          ? null
          : ResourceConfigurationResourceConfigurationDefinitionIpResource.fromMap(
              (map['ipResource'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
