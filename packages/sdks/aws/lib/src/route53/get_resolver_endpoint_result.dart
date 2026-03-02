// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_endpoint_filter.dart';

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

  /// Creates a new [GetResolverEndpointResult].
  /// [arn] Computed ARN of the Route53 Resolver Endpoint.
  /// [direction] Direction of the queries to or from the Resolver Endpoint .
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddresses] List of IPaddresses that have been associated with the Resolver Endpoint.
  /// [name] Required.
  /// [protocols] The protocols used by the Resolver endpoint.
  /// [region] Required.
  /// [resolverEndpointId] Optional.
  /// [resolverEndpointType] The Resolver endpoint IP address type.
  /// [rniEnhancedMetricsEnabled] Boolean indicating whether RNI enhanced metrics are enabled for the Resolver endpoint.
  /// [status] Current status of the Resolver Endpoint.
  /// [targetNameServerMetricsEnabled] Boolean indicating whether target name server metrics are enabled for the outbound Resolver endpoints.
  /// [vpcId] ID of the Host VPC that the Resolver Endpoint resides in.
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
    return <String, dynamic>{
      'arn': arn,
      'direction': direction,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetResolverEndpointFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ipAddresses': ipAddresses,
      'name': name,
      'protocols': protocols,
      'region': region,
      'resolverEndpointId': ?resolverEndpointId,
      'resolverEndpointType': resolverEndpointType,
      'rniEnhancedMetricsEnabled': rniEnhancedMetricsEnabled,
      'status': status,
      'targetNameServerMetricsEnabled': targetNameServerMetricsEnabled,
      'vpcId': vpcId,
    };
  }

  factory GetResolverEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetResolverEndpointResult(
      arn: map['arn'] as String,
      direction: map['direction'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetResolverEndpointFilter>(map['filters']!, (value) => GetResolverEndpointFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
      name: map['name'] as String,
      protocols: (map['protocols'] as List).cast<String>(),
      region: map['region'] as String,
      resolverEndpointId: map['resolverEndpointId'] == null ? null : map['resolverEndpointId'] as String,
      resolverEndpointType: map['resolverEndpointType'] as String,
      rniEnhancedMetricsEnabled: map['rniEnhancedMetricsEnabled'] as bool,
      status: map['status'] as String,
      targetNameServerMetricsEnabled: map['targetNameServerMetricsEnabled'] as bool,
      vpcId: map['vpcId'] as String,
    );
  }
}

