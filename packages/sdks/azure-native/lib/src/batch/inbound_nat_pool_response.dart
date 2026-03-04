// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_group_rule_response.dart';

/// A inbound NAT pool that can be used to address specific ports on compute nodes in a Batch pool externally.
class InboundNatPoolResponse {
  /// This must be unique within a Batch pool. Acceptable values are between 1 and 65535 except for 29876 and 29877 as these are reserved. If any reserved values are provided the request fails with HTTP status code 400.
  final pulumi.Input<int> backendPort;

  /// Acceptable values range between 1 and 65534 except ports from 50000 to 55000 which are reserved by the Batch service. All ranges within a pool must be distinct and cannot overlap. If any reserved or overlapping values are provided the request fails with HTTP status code 400.
  final pulumi.Input<int> frontendPortRangeEnd;

  /// Acceptable values range between 1 and 65534 except ports from 50000 to 55000 which are reserved. All ranges within a pool must be distinct and cannot overlap. If any reserved or overlapping values are provided the request fails with HTTP status code 400.
  final pulumi.Input<int> frontendPortRangeStart;

  /// The name must be unique within a Batch pool, can contain letters, numbers, underscores, periods, and hyphens. Names must start with a letter or number, must end with a letter, number, or underscore, and cannot exceed 77 characters.  If any invalid values are provided the request fails with HTTP status code 400.
  final pulumi.Input<String> name;

  /// The maximum number of rules that can be specified across all the endpoints on a Batch pool is 25. If no network security group rules are specified, a default rule will be created to allow inbound access to the specified backendPort. If the maximum number of network security group rules is exceeded the request fails with HTTP status code 400.
  final pulumi.Input<List<NetworkSecurityGroupRuleResponse>>?
  networkSecurityGroupRules;

  /// The protocol of the endpoint.
  final pulumi.Input<String> protocol;

  /// Creates a new [InboundNatPoolResponse].
  /// [backendPort] This must be unique within a Batch pool. Acceptable values are between 1 and 65535 except for 29876 and 29877 as these are reserved. If any reserved values are provided the request fails with HTTP status code 400.
  /// [frontendPortRangeEnd] Acceptable values range between 1 and 65534 except ports from 50000 to 55000 which are reserved by the Batch service. All ranges within a pool must be distinct and cannot overlap. If any reserved or overlapping values are provided the request fails with HTTP status code 400.
  /// [frontendPortRangeStart] Acceptable values range between 1 and 65534 except ports from 50000 to 55000 which are reserved. All ranges within a pool must be distinct and cannot overlap. If any reserved or overlapping values are provided the request fails with HTTP status code 400.
  /// [name] The name must be unique within a Batch pool, can contain letters, numbers, underscores, periods, and hyphens. Names must start with a letter or number, must end with a letter, number, or underscore, and cannot exceed 77 characters.  If any invalid values are provided the request fails with HTTP status code 400.
  /// [networkSecurityGroupRules] The maximum number of rules that can be specified across all the endpoints on a Batch pool is 25. If no network security group rules are specified, a default rule will be created to allow inbound access to the specified backendPort. If the maximum number of network security group rules is exceeded the request fails with HTTP status code 400.
  /// [protocol] The protocol of the endpoint.
  InboundNatPoolResponse({
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
      'networkSecurityGroupRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkSecurityGroupRuleResponse>,
            List<Map<String, dynamic>>
          >(
            networkSecurityGroupRules,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkSecurityGroupRuleResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'protocol': protocol,
    };
  }

  factory InboundNatPoolResponse.fromMap(Map<String, dynamic> map) {
    return InboundNatPoolResponse(
      backendPort: pulumi.Input.fromValue(map['backendPort'] as int),
      frontendPortRangeEnd: pulumi.Input.fromValue(
        map['frontendPortRangeEnd'] as int,
      ),
      frontendPortRangeStart: pulumi.Input.fromValue(
        map['frontendPortRangeStart'] as int,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkSecurityGroupRules: (() {
        final guardedValue = map['networkSecurityGroupRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkSecurityGroupRuleResponse>(
            guardedValue,
            (value) => NetworkSecurityGroupRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
