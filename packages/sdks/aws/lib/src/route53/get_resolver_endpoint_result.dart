// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_endpoint_filter.dart';

/// Result data returned by getResolverEndpoint.
class GetResolverEndpointResult {
  /// Computed ARN of the Route53 Resolver Endpoint.
  final String? arn;
  /// Direction of the queries to or from the Resolver Endpoint .
  final String? direction;
  final List<GetResolverEndpointFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of IPaddresses that have been associated with the Resolver Endpoint.
  final List<String>? ipAddresses;
  final String? name;
  /// The protocols used by the Resolver endpoint.
  final List<String>? protocols;
  final String? region;
  final String? resolverEndpointId;
  /// The Resolver endpoint IP address type.
  final String? resolverEndpointType;
  /// Boolean indicating whether RNI enhanced metrics are enabled for the Resolver endpoint.
  final bool? rniEnhancedMetricsEnabled;
  /// Current status of the Resolver Endpoint.
  final String? status;
  /// Boolean indicating whether target name server metrics are enabled for the outbound Resolver endpoints.
  final bool? targetNameServerMetricsEnabled;
  /// ID of the Host VPC that the Resolver Endpoint resides in.
  final String? vpcId;

  /// Creates a new [GetResolverEndpointResult].
  /// [arn] Computed ARN of the Route53 Resolver Endpoint.
  /// [direction] Direction of the queries to or from the Resolver Endpoint .
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddresses] List of IPaddresses that have been associated with the Resolver Endpoint.
  /// [name] Optional.
  /// [protocols] The protocols used by the Resolver endpoint.
  /// [region] Optional.
  /// [resolverEndpointId] Optional.
  /// [resolverEndpointType] The Resolver endpoint IP address type.
  /// [rniEnhancedMetricsEnabled] Boolean indicating whether RNI enhanced metrics are enabled for the Resolver endpoint.
  /// [status] Current status of the Resolver Endpoint.
  /// [targetNameServerMetricsEnabled] Boolean indicating whether target name server metrics are enabled for the outbound Resolver endpoints.
  /// [vpcId] ID of the Host VPC that the Resolver Endpoint resides in.
  const GetResolverEndpointResult({
    this.arn,
    this.direction,
    this.filters,
    this.id,
    this.ipAddresses,
    this.name,
    this.protocols,
    this.region,
    this.resolverEndpointId,
    this.resolverEndpointType,
    this.rniEnhancedMetricsEnabled,
    this.status,
    this.targetNameServerMetricsEnabled,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'direction': ?direction,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResolverEndpointFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipAddresses': ?ipAddresses,
      'name': ?name,
      'protocols': ?protocols,
      'region': ?region,
      'resolverEndpointId': ?resolverEndpointId,
      'resolverEndpointType': ?resolverEndpointType,
      'rniEnhancedMetricsEnabled': ?rniEnhancedMetricsEnabled,
      'status': ?status,
      'targetNameServerMetricsEnabled': ?targetNameServerMetricsEnabled,
      'vpcId': ?vpcId,
    };
  }

  factory GetResolverEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetResolverEndpointResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResolverEndpointFilter>(guardedValue, (value) => GetResolverEndpointFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resolverEndpointId: (() { final guardedValue = map['resolverEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resolverEndpointType: (() { final guardedValue = map['resolverEndpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rniEnhancedMetricsEnabled: (() { final guardedValue = map['rniEnhancedMetricsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetNameServerMetricsEnabled: (() { final guardedValue = map['targetNameServerMetricsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
