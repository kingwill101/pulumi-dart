// ignore_for_file: unused_element, unnecessary_cast

import '../resource_configuration_resource_configuration_definition_arn_resource/resource_configuration_resource_configuration_definition_arn_resource.dart';
import '../resource_configuration_resource_configuration_definition_dns_resource/resource_configuration_resource_configuration_definition_dns_resource.dart';
import '../resource_configuration_resource_configuration_definition_ip_resource/resource_configuration_resource_configuration_definition_ip_resource.dart';

class ResourceConfigurationResourceConfigurationDefinition {
  /// Resource DNS Configuration. See <span pulumi-lang-nodejs="`arnResource`" pulumi-lang-dotnet="`ArnResource`" pulumi-lang-go="`arnResource`" pulumi-lang-python="`arn_resource`" pulumi-lang-yaml="`arnResource`" pulumi-lang-java="`arnResource`">`arn_resource`</span> Block for details.
  final ResourceConfigurationResourceConfigurationDefinitionArnResource?
      arnResource;

  /// Resource DNS Configuration. See <span pulumi-lang-nodejs="`dnsResource`" pulumi-lang-dotnet="`DnsResource`" pulumi-lang-go="`dnsResource`" pulumi-lang-python="`dns_resource`" pulumi-lang-yaml="`dnsResource`" pulumi-lang-java="`dnsResource`">`dns_resource`</span> Block for details.
  final ResourceConfigurationResourceConfigurationDefinitionDnsResource?
      dnsResource;

  /// Resource DNS Configuration. See <span pulumi-lang-nodejs="`ipResource`" pulumi-lang-dotnet="`IpResource`" pulumi-lang-go="`ipResource`" pulumi-lang-python="`ip_resource`" pulumi-lang-yaml="`ipResource`" pulumi-lang-java="`ipResource`">`ip_resource`</span> Block for details.
  final ResourceConfigurationResourceConfigurationDefinitionIpResource?
      ipResource;

  ResourceConfigurationResourceConfigurationDefinition({
    this.arnResource,
    this.dnsResource,
    this.ipResource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnResourceValue = arnResource;
    if (arnResourceValue != null) {
      map['arnResource'] = arnResourceValue.toMap();
    }
    final dnsResourceValue = dnsResource;
    if (dnsResourceValue != null) {
      map['dnsResource'] = dnsResourceValue.toMap();
    }
    final ipResourceValue = ipResource;
    if (ipResourceValue != null) {
      map['ipResource'] = ipResourceValue.toMap();
    }
    return map;
  }

  factory ResourceConfigurationResourceConfigurationDefinition.fromMap(
      Map<String, dynamic> map) {
    return ResourceConfigurationResourceConfigurationDefinition(
      arnResource: map['arnResource'] == null
          ? null
          : ResourceConfigurationResourceConfigurationDefinitionArnResource
              .fromMap((map['arnResource'] as Map).cast<String, dynamic>()),
      dnsResource: map['dnsResource'] == null
          ? null
          : ResourceConfigurationResourceConfigurationDefinitionDnsResource
              .fromMap((map['dnsResource'] as Map).cast<String, dynamic>()),
      ipResource: map['ipResource'] == null
          ? null
          : ResourceConfigurationResourceConfigurationDefinitionIpResource
              .fromMap((map['ipResource'] as Map).cast<String, dynamic>()),
    );
  }
}
