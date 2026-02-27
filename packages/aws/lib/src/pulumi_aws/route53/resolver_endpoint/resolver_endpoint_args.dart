// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../resolver_endpoint_ip_address/resolver_endpoint_ip_address.dart';

/// The set of arguments for ResolverEndpoint.
class ResolverEndpointArgs {
  /// Direction of DNS queries to or from the Route 53 Resolver endpoint.
  /// Valid values are `INBOUND` (resolver forwards DNS queries to the DNS service for a VPC from your network or another VPC), `OUTBOUND` (resolver forwards DNS queries from the DNS service for a VPC to your network or another VPC) or `INBOUND_DELEGATION` (resolver delegates queries to Route 53 private hosted zones from your network).
  final Input<String> direction;

  /// Subnets and IP addresses in your VPC that you want DNS queries to pass through on the way from your VPCs
  /// to your network (for outbound endpoints) or on the way from your network to your VPCs (for inbound endpoints). Described below.
  final Input<List<ResolverEndpointIpAddress>> ipAddresses;

  /// Friendly name of the Route 53 Resolver endpoint.
  final Input<String>? name;

  /// Protocols you want to use for the Route 53 Resolver endpoint.
  /// Valid values are `DoH`, `Do53`, or `DoH-FIPS`.
  final Input<List<String>>? protocols;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Endpoint IP type. This endpoint type is applied to all IP addresses.
  /// Valid values are `IPV6`,`IPV4` or `DUALSTACK` (both IPv4 and IPv6).
  final Input<String>? resolverEndpointType;

  /// Boolean indicating whether RNI enhanced metrics are enabled for the Resolver endpoint. Defaults to `false`. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  final Input<bool>? rniEnhancedMetricsEnabled;

  /// ID of one or more security groups that you want to use to control access to this VPC.
  final Input<List<String>> securityGroupIds;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Boolean indicating whether target name server metrics are enabled for the outbound Resolver endpoints. Defaults to `false`. This argument is supported only for outbound endpoints. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  final Input<bool>? targetNameServerMetricsEnabled;

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
    final map = <String, dynamic>{};
    map['direction'] = direction;
    map['ipAddresses'] = Input.mapInputValue<List<ResolverEndpointIpAddress>,
            List<Map<String, dynamic>>>(
        ipAddresses,
        (value) =>
            Input.encodeList<ResolverEndpointIpAddress, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final protocolsValue = protocols;
    if (protocolsValue != null) {
      map['protocols'] = protocolsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resolverEndpointTypeValue = resolverEndpointType;
    if (resolverEndpointTypeValue != null) {
      map['resolverEndpointType'] = resolverEndpointTypeValue;
    }
    final rniEnhancedMetricsEnabledValue = rniEnhancedMetricsEnabled;
    if (rniEnhancedMetricsEnabledValue != null) {
      map['rniEnhancedMetricsEnabled'] = rniEnhancedMetricsEnabledValue;
    }
    map['securityGroupIds'] = securityGroupIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetNameServerMetricsEnabledValue = targetNameServerMetricsEnabled;
    if (targetNameServerMetricsEnabledValue != null) {
      map['targetNameServerMetricsEnabled'] =
          targetNameServerMetricsEnabledValue;
    }
    return map;
  }

  factory ResolverEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ResolverEndpointArgs(
      direction: Input.asInput<String>(map['direction']),
      ipAddresses:
          Input.asInput<List<ResolverEndpointIpAddress>>(map['ipAddresses']),
      name: Input.asOptionalInput<String>(map['name']),
      protocols: Input.asOptionalInput<List<String>>(map['protocols']),
      region: Input.asOptionalInput<String>(map['region']),
      resolverEndpointType:
          Input.asOptionalInput<String>(map['resolverEndpointType']),
      rniEnhancedMetricsEnabled:
          Input.asOptionalInput<bool>(map['rniEnhancedMetricsEnabled']),
      securityGroupIds: Input.asInput<List<String>>(map['securityGroupIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetNameServerMetricsEnabled:
          Input.asOptionalInput<bool>(map['targetNameServerMetricsEnabled']),
    );
  }
}
