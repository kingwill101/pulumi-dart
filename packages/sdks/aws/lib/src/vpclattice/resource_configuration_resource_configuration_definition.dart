// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_configuration_resource_configuration_definition_arn_resource.dart';
import 'resource_configuration_resource_configuration_definition_dns_resource.dart';
import 'resource_configuration_resource_configuration_definition_ip_resource.dart';

class ResourceConfigurationResourceConfigurationDefinition {
  /// Resource DNS Configuration. See `arnResource` Block for details.
  final pulumi.Input<ResourceConfigurationResourceConfigurationDefinitionArnResource?>? arnResource;
  /// Resource DNS Configuration. See `dnsResource` Block for details.
  final pulumi.Input<ResourceConfigurationResourceConfigurationDefinitionDnsResource?>? dnsResource;
  /// Resource DNS Configuration. See `ipResource` Block for details.
  final pulumi.Input<ResourceConfigurationResourceConfigurationDefinitionIpResource?>? ipResource;

  /// Creates a new [ResourceConfigurationResourceConfigurationDefinition].
  /// [arnResource] Resource DNS Configuration. See `arnResource` Block for details.
  /// [dnsResource] Resource DNS Configuration. See `dnsResource` Block for details.
  /// [ipResource] Resource DNS Configuration. See `ipResource` Block for details.
  const ResourceConfigurationResourceConfigurationDefinition({
    this.arnResource,
    this.dnsResource,
    this.ipResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arnResource': ?pulumi.Input.mapOptionalInputValue<ResourceConfigurationResourceConfigurationDefinitionArnResource, Map<String, dynamic>>(arnResource, (value) => value.toMap()),
      'dnsResource': ?pulumi.Input.mapOptionalInputValue<ResourceConfigurationResourceConfigurationDefinitionDnsResource, Map<String, dynamic>>(dnsResource, (value) => value.toMap()),
      'ipResource': ?pulumi.Input.mapOptionalInputValue<ResourceConfigurationResourceConfigurationDefinitionIpResource, Map<String, dynamic>>(ipResource, (value) => value.toMap()),
    };
  }

  factory ResourceConfigurationResourceConfigurationDefinition.fromMap(Map<String, dynamic> map) {
    return ResourceConfigurationResourceConfigurationDefinition(
      arnResource: (() { final guardedValue = map['arnResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceConfigurationResourceConfigurationDefinitionArnResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsResource: (() { final guardedValue = map['dnsResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceConfigurationResourceConfigurationDefinitionDnsResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipResource: (() { final guardedValue = map['ipResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceConfigurationResourceConfigurationDefinitionIpResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
