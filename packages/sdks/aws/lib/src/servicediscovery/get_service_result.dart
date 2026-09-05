// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_dns_config.dart';
import 'get_service_health_check_config.dart';
import 'get_service_health_check_custom_config.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// ARN of the service.
  final String? arn;
  /// Description of the service.
  final String? description;
  /// Complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance. See `dnsConfig` Block for details.
  final List<GetServiceDnsConfig>? dnsConfigs;
  /// Complex type that contains settings for an optional health check. Only for Public DNS namespaces. See `healthCheckConfig` Block for details.
  final List<GetServiceHealthCheckConfig>? healthCheckConfigs;
  /// A complex type that contains settings for ECS managed health checks. See `healthCheckCustomConfig` Block for details.
  final List<GetServiceHealthCheckCustomConfig>? healthCheckCustomConfigs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// ID of the namespace to use for DNS configuration.
  final String? namespaceId;
  final String? region;
  /// Map of tags to assign to the service. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  /// Creates a new [GetServiceResult].
  /// [arn] ARN of the service.
  /// [description] Description of the service.
  /// [dnsConfigs] Complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance. See `dnsConfig` Block for details.
  /// [healthCheckConfigs] Complex type that contains settings for an optional health check. Only for Public DNS namespaces. See `healthCheckConfig` Block for details.
  /// [healthCheckCustomConfigs] A complex type that contains settings for ECS managed health checks. See `healthCheckCustomConfig` Block for details.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [namespaceId] ID of the namespace to use for DNS configuration.
  /// [region] Optional.
  /// [tags] Map of tags to assign to the service. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const GetServiceResult({
    this.arn,
    this.description,
    this.dnsConfigs,
    this.healthCheckConfigs,
    this.healthCheckCustomConfigs,
    this.id,
    this.name,
    this.namespaceId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'dnsConfigs': ?(() { final guardedValue = dnsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceDnsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'healthCheckConfigs': ?(() { final guardedValue = healthCheckConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceHealthCheckConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'healthCheckCustomConfigs': ?(() { final guardedValue = healthCheckCustomConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceHealthCheckCustomConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'namespaceId': ?namespaceId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsConfigs: (() { final guardedValue = map['dnsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceDnsConfig>(guardedValue, (value) => GetServiceDnsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      healthCheckConfigs: (() { final guardedValue = map['healthCheckConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceHealthCheckConfig>(guardedValue, (value) => GetServiceHealthCheckConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      healthCheckCustomConfigs: (() { final guardedValue = map['healthCheckCustomConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceHealthCheckCustomConfig>(guardedValue, (value) => GetServiceHealthCheckCustomConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
