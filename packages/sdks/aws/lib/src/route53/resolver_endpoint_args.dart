// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_endpoint_ip_address.dart';

/// {@template pulumi_route53_resolver_endpoint_resolver_endpoint_args_doc}
/// The set of arguments for ResolverEndpoint.
/// {@endtemplate}
/// {@macro pulumi_route53_resolver_endpoint_resolver_endpoint_args_doc}
class ResolverEndpointArgs {
  /// Direction of DNS queries to or from the Route 53 Resolver endpoint.
  /// Valid values are `INBOUND` (resolver forwards DNS queries to the DNS service for a VPC from your network or another VPC), `OUTBOUND` (resolver forwards DNS queries from the DNS service for a VPC to your network or another VPC) or `INBOUND_DELEGATION` (resolver delegates queries to Route 53 private hosted zones from your network).
  final pulumi.Input<String> direction;
  /// Subnets and IP addresses in your VPC that you want DNS queries to pass through on the way from your VPCs
  /// to your network (for outbound endpoints) or on the way from your network to your VPCs (for inbound endpoints). Described below.
  final pulumi.Input<List<ResolverEndpointIpAddress>> ipAddresses;
  /// Friendly name of the Route 53 Resolver endpoint.
  final pulumi.Input<String>? name;
  /// Protocols you want to use for the Route 53 Resolver endpoint.
  /// Valid values are `DoH`, `Do53`, or `DoH-FIPS`.
  final pulumi.Input<List<String>>? protocols;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Endpoint IP type. This endpoint type is applied to all IP addresses.
  /// Valid values are `IPV6`,`IPV4` or `DUALSTACK` (both IPv4 and IPv6).
  final pulumi.Input<String>? resolverEndpointType;
  /// Boolean indicating whether RNI enhanced metrics are enabled for the Resolver endpoint. Defaults to `false`. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  final pulumi.Input<bool>? rniEnhancedMetricsEnabled;
  /// ID of one or more security groups that you want to use to control access to this VPC.
  final pulumi.Input<List<String>> securityGroupIds;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Boolean indicating whether target name server metrics are enabled for the outbound Resolver endpoints. Defaults to `false`. This argument is supported only for outbound endpoints. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  final pulumi.Input<bool>? targetNameServerMetricsEnabled;

  /// Creates a new [ResolverEndpointArgs].
  /// [direction] Direction of DNS queries to or from the Route 53 Resolver endpoint.
  /// [ipAddresses] Subnets and IP addresses in your VPC that you want DNS queries to pass through on the way from your VPCs
  /// [name] Friendly name of the Route 53 Resolver endpoint.
  /// [protocols] Protocols you want to use for the Route 53 Resolver endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverEndpointType] Endpoint IP type. This endpoint type is applied to all IP addresses.
  /// [rniEnhancedMetricsEnabled] Boolean indicating whether RNI enhanced metrics are enabled for the Resolver endpoint. Defaults to `false`. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  /// [securityGroupIds] ID of one or more security groups that you want to use to control access to this VPC.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetNameServerMetricsEnabled] Boolean indicating whether target name server metrics are enabled for the outbound Resolver endpoints. Defaults to `false`. This argument is supported only for outbound endpoints. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  ResolverEndpointArgs({
    required this.direction,
    required this.ipAddresses,
    this.name,
    this.protocols,
    this.region,
    this.resolverEndpointType,
    this.rniEnhancedMetricsEnabled,
    required this.securityGroupIds,
    this.tags,
    this.targetNameServerMetricsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'ipAddresses': pulumi.Input.mapInputValue<List<ResolverEndpointIpAddress>, List<Map<String, dynamic>>>(ipAddresses, (value) => pulumi.Input.encodeList<ResolverEndpointIpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'protocols': ?protocols,
      'region': ?region,
      'resolverEndpointType': ?resolverEndpointType,
      'rniEnhancedMetricsEnabled': ?rniEnhancedMetricsEnabled,
      'securityGroupIds': securityGroupIds,
      'tags': ?tags,
      'targetNameServerMetricsEnabled': ?targetNameServerMetricsEnabled,
    };
  }

  factory ResolverEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ResolverEndpointArgs(
      direction: (map['direction'] as String).input(),
      ipAddresses: (pulumi.Input.decodeList<ResolverEndpointIpAddress>(map['ipAddresses'], (value) => ResolverEndpointIpAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocols: map['protocols'] == null ? null : ((map['protocols'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resolverEndpointType: map['resolverEndpointType'] == null ? null : (map['resolverEndpointType'] as String).input(),
      rniEnhancedMetricsEnabled: map['rniEnhancedMetricsEnabled'] == null ? null : (map['rniEnhancedMetricsEnabled'] as bool).input(),
      securityGroupIds: ((map['securityGroupIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      targetNameServerMetricsEnabled: map['targetNameServerMetricsEnabled'] == null ? null : (map['targetNameServerMetricsEnabled'] as bool).input(),
    );
  }
}

