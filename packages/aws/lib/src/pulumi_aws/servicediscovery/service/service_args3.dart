// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_dns_config/service_dns_config.dart';
import '../service_health_check_config/service_health_check_config.dart';
import '../service_health_check_custom_config/service_health_check_custom_config.dart';

/// The set of arguments for Service.
class ServiceArgs3 {
  /// The description of the service.
  final Input<String>? description;

  /// A complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance. See <span pulumi-lang-nodejs="`dnsConfig`" pulumi-lang-dotnet="`DnsConfig`" pulumi-lang-go="`dnsConfig`" pulumi-lang-python="`dns_config`" pulumi-lang-yaml="`dnsConfig`" pulumi-lang-java="`dnsConfig`">`dns_config`</span> Block for details.
  final Input<ServiceDnsConfig>? dnsConfig;

  /// A boolean that indicates all instances should be deleted from the service so that the service can be destroyed without error. These instances are not recoverable. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? forceDestroy;

  /// A complex type that contains settings for an optional health check. Only for Public DNS namespaces. See <span pulumi-lang-nodejs="`healthCheckConfig`" pulumi-lang-dotnet="`HealthCheckConfig`" pulumi-lang-go="`healthCheckConfig`" pulumi-lang-python="`health_check_config`" pulumi-lang-yaml="`healthCheckConfig`" pulumi-lang-java="`healthCheckConfig`">`health_check_config`</span> Block for details.
  final Input<ServiceHealthCheckConfig>? healthCheckConfig;

  /// Please use <span pulumi-lang-nodejs="`healthCheckConfig`" pulumi-lang-dotnet="`HealthCheckConfig`" pulumi-lang-go="`healthCheckConfig`" pulumi-lang-python="`health_check_config`" pulumi-lang-yaml="`healthCheckConfig`" pulumi-lang-java="`healthCheckConfig`">`health_check_config`</span> instead. See <span pulumi-lang-nodejs="`healthCheckCustomConfig`" pulumi-lang-dotnet="`HealthCheckCustomConfig`" pulumi-lang-go="`healthCheckCustomConfig`" pulumi-lang-python="`health_check_custom_config`" pulumi-lang-yaml="`healthCheckCustomConfig`" pulumi-lang-java="`healthCheckCustomConfig`">`health_check_custom_config`</span> Block for details.
  final Input<ServiceHealthCheckCustomConfig>? healthCheckCustomConfig;

  /// The name of the service.
  final Input<String>? name;

  /// The ID of the namespace that you want to use to create the service.
  final Input<String>? namespaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the service. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// If present, specifies that the service instances are only discoverable using the `DiscoverInstances` API operation. No DNS records is registered for the service instances. The only valid value is `HTTP`.
  final Input<String>? type;

  ServiceArgs3({
    this.description,
    this.dnsConfig,
    this.forceDestroy,
    this.healthCheckConfig,
    this.healthCheckCustomConfig,
    this.name,
    this.namespaceId,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dnsConfigValue = dnsConfig;
    if (dnsConfigValue != null) {
      map['dnsConfig'] =
          Input.mapOptionalInputValue<ServiceDnsConfig, Map<String, dynamic>>(
              dnsConfigValue, (value) => value.toMap());
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final healthCheckConfigValue = healthCheckConfig;
    if (healthCheckConfigValue != null) {
      map['healthCheckConfig'] = Input.mapOptionalInputValue<
              ServiceHealthCheckConfig, Map<String, dynamic>>(
          healthCheckConfigValue, (value) => value.toMap());
    }
    final healthCheckCustomConfigValue = healthCheckCustomConfig;
    if (healthCheckCustomConfigValue != null) {
      map['healthCheckCustomConfig'] = Input.mapOptionalInputValue<
              ServiceHealthCheckCustomConfig, Map<String, dynamic>>(
          healthCheckCustomConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namespaceIdValue = namespaceId;
    if (namespaceIdValue != null) {
      map['namespaceId'] = namespaceIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ServiceArgs3.fromMap(Map<String, dynamic> map) {
    return ServiceArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      dnsConfig: Input.asOptionalInput<ServiceDnsConfig>(map['dnsConfig']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      healthCheckConfig: Input.asOptionalInput<ServiceHealthCheckConfig>(
          map['healthCheckConfig']),
      healthCheckCustomConfig:
          Input.asOptionalInput<ServiceHealthCheckCustomConfig>(
              map['healthCheckCustomConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      namespaceId: Input.asOptionalInput<String>(map['namespaceId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
