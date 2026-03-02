// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_dns_config.dart';
import 'service_health_check_config.dart';
import 'service_health_check_custom_config.dart';

/// {@template pulumi_servicediscovery_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_servicediscovery_service_service_args_doc}
class ServiceArgs {
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

  /// Creates a new [ServiceArgs].
  /// [description] The description of the service.
  /// [dnsConfig] A complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance. See `dns_config` Block for details.
  /// [forceDestroy] A boolean that indicates all instances should be deleted from the service so that the service can be destroyed without error. These instances are not recoverable. Defaults to `false`.
  /// [healthCheckConfig] A complex type that contains settings for an optional health check. Only for Public DNS namespaces. See `health_check_config` Block for details.
  /// [healthCheckCustomConfig] Please use `health_check_config` instead. See `health_check_custom_config` Block for details.
  /// [name] The name of the service.
  /// [namespaceId] The ID of the namespace that you want to use to create the service.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the service. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] If present, specifies that the service instances are only discoverable using the `DiscoverInstances` API operation. No DNS records is registered for the service instances. The only valid value is `HTTP`.
  ServiceArgs({
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
    return <String, dynamic>{
      'description': ?description,
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<ServiceDnsConfig, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'forceDestroy': ?forceDestroy,
      'healthCheckConfig': ?pulumi.Input.mapOptionalInputValue<ServiceHealthCheckConfig, Map<String, dynamic>>(healthCheckConfig, (value) => value.toMap()),
      'healthCheckCustomConfig': ?pulumi.Input.mapOptionalInputValue<ServiceHealthCheckCustomConfig, Map<String, dynamic>>(healthCheckCustomConfig, (value) => value.toMap()),
      'name': ?name,
      'namespaceId': ?namespaceId,
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      dnsConfig: map['dnsConfig'] == null ? null : ((ServiceDnsConfig.fromMap((map['dnsConfig']! as Map).cast<String, dynamic>())).input()).input(),
      forceDestroy: map['forceDestroy'] == null ? null : ((map['forceDestroy'] as bool).input()).input(),
      healthCheckConfig: map['healthCheckConfig'] == null ? null : ((ServiceHealthCheckConfig.fromMap((map['healthCheckConfig']! as Map).cast<String, dynamic>())).input()).input(),
      healthCheckCustomConfig: map['healthCheckCustomConfig'] == null ? null : ((ServiceHealthCheckCustomConfig.fromMap((map['healthCheckCustomConfig']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namespaceId: map['namespaceId'] == null ? null : ((map['namespaceId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}

