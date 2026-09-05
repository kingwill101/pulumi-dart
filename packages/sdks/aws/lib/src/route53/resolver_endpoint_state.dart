// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_endpoint_ip_address.dart';

/// Input properties used for looking up and filtering ResolverEndpoint resources.
class ResolverEndpointState {
  /// ARN of the Route 53 Resolver endpoint.
  final pulumi.Input<String?>? arn;
  /// Direction of DNS queries to or from the Route 53 Resolver endpoint.
  /// Valid values are `INBOUND` (resolver forwards DNS queries to the DNS service for a VPC from your network or another VPC), `OUTBOUND` (resolver forwards DNS queries from the DNS service for a VPC to your network or another VPC) or `INBOUND_DELEGATION` (resolver delegates queries to Route 53 private hosted zones from your network).
  final pulumi.Input<String?>? direction;
  /// ID of the VPC that you want to create the resolver endpoint in.
  final pulumi.Input<String?>? hostVpcId;
  /// Subnets and IP addresses in your VPC that you want DNS queries to pass through on the way from your VPCs
  /// to your network (for outbound endpoints) or on the way from your network to your VPCs (for inbound endpoints). Described below.
  final pulumi.Input<List<ResolverEndpointIpAddress>?>? ipAddresses;
  /// Friendly name of the Route 53 Resolver endpoint.
  final pulumi.Input<String?>? name;
  /// Protocols you want to use for the Route 53 Resolver endpoint.
  /// Valid values are `DoH`, `Do53`, or `DoH-FIPS`.
  final pulumi.Input<List<String>?>? protocols;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Endpoint IP type. This endpoint type is applied to all IP addresses.
  /// Valid values are `IPV6`,`IPV4` or `DUALSTACK` (both IPv4 and IPv6).
  final pulumi.Input<String?>? resolverEndpointType;
  /// Boolean indicating whether RNI enhanced metrics are enabled for the Resolver endpoint. Defaults to `false`. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  final pulumi.Input<bool?>? rniEnhancedMetricsEnabled;
  /// ID of one or more security groups that you want to use to control access to this VPC.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Boolean indicating whether target name server metrics are enabled for the outbound Resolver endpoints. Defaults to `false`. This argument is supported only for outbound endpoints. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  final pulumi.Input<bool?>? targetNameServerMetricsEnabled;

  /// Creates a new [ResolverEndpointState].
  /// [arn] ARN of the Route 53 Resolver endpoint.
  /// [direction] Direction of DNS queries to or from the Route 53 Resolver endpoint.
  /// [hostVpcId] ID of the VPC that you want to create the resolver endpoint in.
  /// [ipAddresses] Subnets and IP addresses in your VPC that you want DNS queries to pass through on the way from your VPCs
  /// [name] Friendly name of the Route 53 Resolver endpoint.
  /// [protocols] Protocols you want to use for the Route 53 Resolver endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverEndpointType] Endpoint IP type. This endpoint type is applied to all IP addresses.
  /// [rniEnhancedMetricsEnabled] Boolean indicating whether RNI enhanced metrics are enabled for the Resolver endpoint. Defaults to `false`. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  /// [securityGroupIds] ID of one or more security groups that you want to use to control access to this VPC.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetNameServerMetricsEnabled] Boolean indicating whether target name server metrics are enabled for the outbound Resolver endpoints. Defaults to `false`. This argument is supported only for outbound endpoints. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  const ResolverEndpointState({
    this.arn,
    this.direction,
    this.hostVpcId,
    this.ipAddresses,
    this.name,
    this.protocols,
    this.region,
    this.resolverEndpointType,
    this.rniEnhancedMetricsEnabled,
    this.securityGroupIds,
    this.tags,
    this.tagsAll,
    this.targetNameServerMetricsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'direction': ?direction,
      'hostVpcId': ?hostVpcId,
      'ipAddresses': ?pulumi.Input.mapOptionalInputValue<List<ResolverEndpointIpAddress>, List<Map<String, dynamic>>>(ipAddresses, (value) => pulumi.Input.encodeList<ResolverEndpointIpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'protocols': ?protocols,
      'region': ?region,
      'resolverEndpointType': ?resolverEndpointType,
      'rniEnhancedMetricsEnabled': ?rniEnhancedMetricsEnabled,
      'securityGroupIds': ?securityGroupIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetNameServerMetricsEnabled': ?targetNameServerMetricsEnabled,
    };
  }

  factory ResolverEndpointState.fromMap(Map<String, dynamic> map) {
    return ResolverEndpointState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostVpcId: (() { final guardedValue = map['hostVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResolverEndpointIpAddress>(guardedValue, (value) => ResolverEndpointIpAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolverEndpointType: (() { final guardedValue = map['resolverEndpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rniEnhancedMetricsEnabled: (() { final guardedValue = map['rniEnhancedMetricsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetNameServerMetricsEnabled: (() { final guardedValue = map['targetNameServerMetricsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
