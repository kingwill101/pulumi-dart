// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_endpoint_protocol.dart';
import 'network_security_group_rule.dart';

/// A inbound NAT pool that can be used to address specific ports on compute nodes in a Batch pool externally.
class InboundNatPool {
  /// This must be unique within a Batch pool. Acceptable values are between 1 and 65535 except for 29876 and 29877 as these are reserved. If any reserved values are provided the request fails with HTTP status code 400.
  final pulumi.Input<int> backendPort;
  /// Acceptable values range between 1 and 65534 except ports from 50000 to 55000 which are reserved by the Batch service. All ranges within a pool must be distinct and cannot overlap. If any reserved or overlapping values are provided the request fails with HTTP status code 400.
  final pulumi.Input<int> frontendPortRangeEnd;
  /// Acceptable values range between 1 and 65534 except ports from 50000 to 55000 which are reserved. All ranges within a pool must be distinct and cannot overlap. If any reserved or overlapping values are provided the request fails with HTTP status code 400.
  final pulumi.Input<int> frontendPortRangeStart;
  /// The name must be unique within a Batch pool, can contain letters, numbers, underscores, periods, and hyphens. Names must start with a letter or number, must end with a letter, number, or underscore, and cannot exceed 77 characters.  If any invalid values are provided the request fails with HTTP status code 400.
  final pulumi.Input<String> name;
  /// The maximum number of rules that can be specified across all the endpoints on a Batch pool is 25. If no network security group rules are specified, a default rule will be created to allow inbound access to the specified backendPort. If the maximum number of network security group rules is exceeded the request fails with HTTP status code 400.
  final pulumi.Input<List<NetworkSecurityGroupRule>?>? networkSecurityGroupRules;
  /// The protocol of the endpoint.
  final pulumi.Input<InboundEndpointProtocol> protocol;

  /// Creates a new [InboundNatPool].
  /// [backendPort] This must be unique within a Batch pool. Acceptable values are between 1 and 65535 except for 29876 and 29877 as these are reserved. If any reserved values are provided the request fails with HTTP status code 400.
  /// [frontendPortRangeEnd] Acceptable values range between 1 and 65534 except ports from 50000 to 55000 which are reserved by the Batch service. All ranges within a pool must be distinct and cannot overlap. If any reserved or overlapping values are provided the request fails with HTTP status code 400.
  /// [frontendPortRangeStart] Acceptable values range between 1 and 65534 except ports from 50000 to 55000 which are reserved. All ranges within a pool must be distinct and cannot overlap. If any reserved or overlapping values are provided the request fails with HTTP status code 400.
  /// [name] The name must be unique within a Batch pool, can contain letters, numbers, underscores, periods, and hyphens. Names must start with a letter or number, must end with a letter, number, or underscore, and cannot exceed 77 characters.  If any invalid values are provided the request fails with HTTP status code 400.
  /// [networkSecurityGroupRules] The maximum number of rules that can be specified across all the endpoints on a Batch pool is 25. If no network security group rules are specified, a default rule will be created to allow inbound access to the specified backendPort. If the maximum number of network security group rules is exceeded the request fails with HTTP status code 400.
  /// [protocol] The protocol of the endpoint.
  const InboundNatPool({
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
      'networkSecurityGroupRules': ?pulumi.Input.mapOptionalInputValue<List<NetworkSecurityGroupRule>, List<Map<String, dynamic>>>(networkSecurityGroupRules, (value) => pulumi.Input.encodeList<NetworkSecurityGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocol': pulumi.Input.mapInputValue<InboundEndpointProtocol, String>(protocol, (value) => value.wireValue),
    };
  }

  factory InboundNatPool.fromMap(Map<String, dynamic> map) {
    return InboundNatPool(
      backendPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['backendPort'])),
      frontendPortRangeEnd: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['frontendPortRangeEnd'])),
      frontendPortRangeStart: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['frontendPortRangeStart'])),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkSecurityGroupRules: (() { final guardedValue = map['networkSecurityGroupRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkSecurityGroupRule>(guardedValue, (value) => NetworkSecurityGroupRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      protocol: pulumi.Input.fromValue(InboundEndpointProtocol.fromValue(map['protocol']! as String)),
    );
  }
}
