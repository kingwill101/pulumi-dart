// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_dns_config/get_service_dns_config.dart';
import '../get_service_health_check_config/get_service_health_check_config.dart';
import '../get_service_health_check_custom_config/get_service_health_check_custom_config.dart';

/// Result data returned by getService.
class GetServiceResult3 {
  /// ARN of the service.
  final String arn;

  /// Description of the service.
  final String description;

  /// Complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance. See <span pulumi-lang-nodejs="`dnsConfig`" pulumi-lang-dotnet="`DnsConfig`" pulumi-lang-go="`dnsConfig`" pulumi-lang-python="`dns_config`" pulumi-lang-yaml="`dnsConfig`" pulumi-lang-java="`dnsConfig`">`dns_config`</span> Block for details.
  final List<GetServiceDnsConfig> dnsConfigs;

  /// Complex type that contains settings for an optional health check. Only for Public DNS namespaces. See <span pulumi-lang-nodejs="`healthCheckConfig`" pulumi-lang-dotnet="`HealthCheckConfig`" pulumi-lang-go="`healthCheckConfig`" pulumi-lang-python="`health_check_config`" pulumi-lang-yaml="`healthCheckConfig`" pulumi-lang-java="`healthCheckConfig`">`health_check_config`</span> Block for details.
  final List<GetServiceHealthCheckConfig> healthCheckConfigs;

  /// A complex type that contains settings for ECS managed health checks. See <span pulumi-lang-nodejs="`healthCheckCustomConfig`" pulumi-lang-dotnet="`HealthCheckCustomConfig`" pulumi-lang-go="`healthCheckCustomConfig`" pulumi-lang-python="`health_check_custom_config`" pulumi-lang-yaml="`healthCheckCustomConfig`" pulumi-lang-java="`healthCheckCustomConfig`">`health_check_custom_config`</span> Block for details.
  final List<GetServiceHealthCheckCustomConfig> healthCheckCustomConfigs;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// ID of the namespace to use for DNS configuration.
  final String namespaceId;
  final String region;

  /// Map of tags to assign to the service. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  GetServiceResult3({
    required this.arn,
    required this.description,
    required this.dnsConfigs,
    required this.healthCheckConfigs,
    required this.healthCheckCustomConfigs,
    required this.id,
    required this.name,
    required this.namespaceId,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['dnsConfigs'] =
        Input.encodeList<GetServiceDnsConfig, Map<String, dynamic>>(
            dnsConfigs, (value) => value.toMap());
    map['healthCheckConfigs'] =
        Input.encodeList<GetServiceHealthCheckConfig, Map<String, dynamic>>(
            healthCheckConfigs, (value) => value.toMap());
    map['healthCheckCustomConfigs'] = Input.encodeList<
            GetServiceHealthCheckCustomConfig, Map<String, dynamic>>(
        healthCheckCustomConfigs, (value) => value.toMap());
    map['id'] = id;
    map['name'] = name;
    map['namespaceId'] = namespaceId;
    map['region'] = region;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetServiceResult3.fromMap(Map<String, dynamic> map) {
    return GetServiceResult3(
      arn: map['arn'] as String,
      description: map['description'] as String,
      dnsConfigs: Input.decodeList<GetServiceDnsConfig>(
          map['dnsConfigs'],
          (value) => GetServiceDnsConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      healthCheckConfigs: Input.decodeList<GetServiceHealthCheckConfig>(
          map['healthCheckConfigs'],
          (value) => GetServiceHealthCheckConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      healthCheckCustomConfigs:
          Input.decodeList<GetServiceHealthCheckCustomConfig>(
              map['healthCheckCustomConfigs'],
              (value) => GetServiceHealthCheckCustomConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      namespaceId: map['namespaceId'] as String,
      region: map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
