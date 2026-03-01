// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_endpoint_protocol.dart';
import 'network_security_group_rule.dart';

/// A inbound NAT pool that can be used to address specific ports on compute nodes in a Batch pool externally.
class InboundNatPool {
  /// This must be unique within a Batch pool. Acceptable values are between 1 and 65535 except for 29876 and 29877 as these are reserved. If any reserved values are provided the request fails with HTTP status code 400.
  final int backendPort;
  /// Acceptable values range between 1 and 65534 except ports from 50000 to 55000 which are reserved by the Batch service. All ranges within a pool must be distinct and cannot overlap. If any reserved or overlapping values are provided the request fails with HTTP status code 400.
  final int frontendPortRangeEnd;
  /// Acceptable values range between 1 and 65534 except ports from 50000 to 55000 which are reserved. All ranges within a pool must be distinct and cannot overlap. If any reserved or overlapping values are provided the request fails with HTTP status code 400.
  final int frontendPortRangeStart;
  /// The name must be unique within a Batch pool, can contain letters, numbers, underscores, periods, and hyphens. Names must start with a letter or number, must end with a letter, number, or underscore, and cannot exceed 77 characters.  If any invalid values are provided the request fails with HTTP status code 400.
  final String name;
  /// The maximum number of rules that can be specified across all the endpoints on a Batch pool is 25. If no network security group rules are specified, a default rule will be created to allow inbound access to the specified backendPort. If the maximum number of network security group rules is exceeded the request fails with HTTP status code 400.
  final List<NetworkSecurityGroupRule>? networkSecurityGroupRules;
  /// The protocol of the endpoint.
  final InboundEndpointProtocol protocol;

  /// Creates a new [InboundNatPool].
  /// [backendPort] This must be unique within a Batch pool. Acceptable values are between 1 and 65535 except for 29876 and 29877 as these are reserved. If any reserved values are provided the request fails with HTTP status code 400.
  /// [frontendPortRangeEnd] Acceptable values range between 1 and 65534 except ports from 50000 to 55000 which are reserved by the Batch service. All ranges within a pool must be distinct and cannot overlap. If any reserved or overlapping values are provided the request fails with HTTP status code 400.
  /// [frontendPortRangeStart] Acceptable values range between 1 and 65534 except ports from 50000 to 55000 which are reserved. All ranges within a pool must be distinct and cannot overlap. If any reserved or overlapping values are provided the request fails with HTTP status code 400.
  /// [name] The name must be unique within a Batch pool, can contain letters, numbers, underscores, periods, and hyphens. Names must start with a letter or number, must end with a letter, number, or underscore, and cannot exceed 77 characters.  If any invalid values are provided the request fails with HTTP status code 400.
  /// [networkSecurityGroupRules] The maximum number of rules that can be specified across all the endpoints on a Batch pool is 25. If no network security group rules are specified, a default rule will be created to allow inbound access to the specified backendPort. If the maximum number of network security group rules is exceeded the request fails with HTTP status code 400.
  /// [protocol] The protocol of the endpoint.
  InboundNatPool({
    required this.backendPort,
    required this.frontendPortRangeEnd,
    required this.frontendPortRangeStart,
    required this.name,
    this.networkSecurityGroupRules,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'frontendPortRangeEnd': frontendPortRangeEnd,
      'frontendPortRangeStart': frontendPortRangeStart,
      'name': name,
      'networkSecurityGroupRules': ?networkSecurityGroupRules == null ? null : pulumi.Input.encodeList<NetworkSecurityGroupRule, Map<String, dynamic>>(networkSecurityGroupRules!, (value) => value.toMap()),
      'protocol': protocol.value,
    };
  }

  factory InboundNatPool.fromMap(Map<String, dynamic> map) {
    return InboundNatPool(
      backendPort: map['backendPort'] as int,
      frontendPortRangeEnd: map['frontendPortRangeEnd'] as int,
      frontendPortRangeStart: map['frontendPortRangeStart'] as int,
      name: map['name'] as String,
      networkSecurityGroupRules: map['networkSecurityGroupRules'] == null ? null : pulumi.Input.decodeList<NetworkSecurityGroupRule>(map['networkSecurityGroupRules'], (value) => NetworkSecurityGroupRule.fromMap((value as Map).cast<String, dynamic>())),
      protocol: InboundEndpointProtocol.fromValue(map['protocol'] as String),
    );
  }
}

