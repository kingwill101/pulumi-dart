// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_dns_config/service_dns_config.dart';
import '../service_health_check_config/service_health_check_config.dart';
import '../service_health_check_custom_config/service_health_check_custom_config.dart';

/// The set of arguments for Service.
class ServiceServicediscoveryArgs {
  /// The description of the service.
  final pulumi.Input<String>? description;

  /// A complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance. See `dns_config` Block for details.
  final pulumi.Input<ServiceDnsConfig>? dnsConfig;

  /// A boolean that indicates all instances should be deleted from the service so that the service can be destroyed without error. These instances are not recoverable. Defaults to `false`.
  final pulumi.Input<bool>? forceDestroy;

  /// A complex type that contains settings for an optional health check. Only for Public DNS namespaces. See `health_check_config` Block for details.
  final pulumi.Input<ServiceHealthCheckConfig>? healthCheckConfig;

  /// Please use `health_check_config` instead. See `health_check_custom_config` Block for details.
  final pulumi.Input<ServiceHealthCheckCustomConfig>? healthCheckCustomConfig;

  /// The name of the service.
  final pulumi.Input<String>? name;

  /// The ID of the namespace that you want to use to create the service.
  final pulumi.Input<String>? namespaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the service. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// If present, specifies that the service instances are only discoverable using the `DiscoverInstances` API operation. No DNS records is registered for the service instances. The only valid value is `HTTP`.
  final pulumi.Input<String>? type;

  ServiceServicediscoveryArgs({
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
      map['dnsConfig'] = pulumi.Input.mapOptionalInputValue<ServiceDnsConfig,
          Map<String, dynamic>>(dnsConfigValue, (value) => value.toMap());
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final healthCheckConfigValue = healthCheckConfig;
    if (healthCheckConfigValue != null) {
      map['healthCheckConfig'] = pulumi.Input.mapOptionalInputValue<
              ServiceHealthCheckConfig, Map<String, dynamic>>(
          healthCheckConfigValue, (value) => value.toMap());
    }
    final healthCheckCustomConfigValue = healthCheckCustomConfig;
    if (healthCheckCustomConfigValue != null) {
      map['healthCheckCustomConfig'] = pulumi.Input.mapOptionalInputValue<
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

  factory ServiceServicediscoveryArgs.fromMap(Map<String, dynamic> map) {
    return ServiceServicediscoveryArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dnsConfig:
          pulumi.Input.asOptionalInput<ServiceDnsConfig>(map['dnsConfig']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      healthCheckConfig: pulumi.Input.asOptionalInput<ServiceHealthCheckConfig>(
          map['healthCheckConfig']),
      healthCheckCustomConfig:
          pulumi.Input.asOptionalInput<ServiceHealthCheckCustomConfig>(
              map['healthCheckCustomConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namespaceId: pulumi.Input.asOptionalInput<String>(map['namespaceId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
