// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_resolver_endpoint_filter/get_resolver_endpoint_filter.dart';

/// Result data returned by getResolverEndpoint.
class GetResolverEndpointResult {
  /// Computed ARN of the Route53 Resolver Endpoint.
  final String arn;

  /// Direction of the queries to or from the Resolver Endpoint .
  final String direction;
  final List<GetResolverEndpointFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of IPaddresses that have been associated with the Resolver Endpoint.
  final List<String> ipAddresses;
  final String name;

  /// The protocols used by the Resolver endpoint.
  final List<String> protocols;
  final String region;
  final String? resolverEndpointId;

  /// The Resolver endpoint IP address type.
  final String resolverEndpointType;

  /// Boolean indicating whether RNI enhanced metrics are enabled for the Resolver endpoint.
  final bool rniEnhancedMetricsEnabled;

  /// Current status of the Resolver Endpoint.
  final String status;

  /// Boolean indicating whether target name server metrics are enabled for the outbound Resolver endpoints.
  final bool targetNameServerMetricsEnabled;

  /// ID of the Host VPC that the Resolver Endpoint resides in.
  final String vpcId;

  GetResolverEndpointResult({
    required this.arn,
    required this.direction,
    this.filters,
    required this.id,
    required this.ipAddresses,
    required this.name,
    required this.protocols,
    required this.region,
    this.resolverEndpointId,
    required this.resolverEndpointType,
    required this.rniEnhancedMetricsEnabled,
    required this.status,
    required this.targetNameServerMetricsEnabled,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['direction'] = direction;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetResolverEndpointFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ipAddresses'] = ipAddresses;
    map['name'] = name;
    map['protocols'] = protocols;
    map['region'] = region;
    final resolverEndpointIdValue = resolverEndpointId;
    if (resolverEndpointIdValue != null) {
      map['resolverEndpointId'] = resolverEndpointIdValue;
    }
    map['resolverEndpointType'] = resolverEndpointType;
    map['rniEnhancedMetricsEnabled'] = rniEnhancedMetricsEnabled;
    map['status'] = status;
    map['targetNameServerMetricsEnabled'] = targetNameServerMetricsEnabled;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetResolverEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetResolverEndpointResult(
      arn: map['arn'] as String,
      direction: map['direction'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetResolverEndpointFilter>(
              map['filters'],
              (value) => GetResolverEndpointFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
      name: map['name'] as String,
      protocols: (map['protocols'] as List).cast<String>(),
      region: map['region'] as String,
      resolverEndpointId: map['resolverEndpointId'] == null
          ? null
          : map['resolverEndpointId'] as String,
      resolverEndpointType: map['resolverEndpointType'] as String,
      rniEnhancedMetricsEnabled: map['rniEnhancedMetricsEnabled'] as bool,
      status: map['status'] as String,
      targetNameServerMetricsEnabled:
          map['targetNameServerMetricsEnabled'] as bool,
      vpcId: map['vpcId'] as String,
    );
  }
}
