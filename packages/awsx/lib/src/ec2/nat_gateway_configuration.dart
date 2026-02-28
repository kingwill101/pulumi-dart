// ignore_for_file: unused_element, unnecessary_cast

import 'nat_gateway_strategy.dart';

/// Configuration for NAT Gateways.
class NatGatewayConfiguration {
  /// A list of EIP allocation IDs to assign to the NAT Gateways. Optional. If specified, the number of supplied values must match the chosen strategy (either one, or the number of availability zones).
  final List<String>? elasticIpAllocationIds;

  /// The strategy for deploying NAT Gateways.
  final NatGatewayStrategy strategy;

  /// Creates a new [NatGatewayConfiguration].
  /// [elasticIpAllocationIds] A list of EIP allocation IDs to assign to the NAT Gateways. Optional. If specified, the number of supplied values must match the chosen strategy (either one, or the number of availability zones).
  /// [strategy] The strategy for deploying NAT Gateways.
  NatGatewayConfiguration({
    this.elasticIpAllocationIds,
    required this.strategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final elasticIpAllocationIdsValue = elasticIpAllocationIds;
    if (elasticIpAllocationIdsValue != null) {
      map['elasticIpAllocationIds'] = elasticIpAllocationIdsValue;
    }
    map['strategy'] = strategy.value;
    return map;
  }

  factory NatGatewayConfiguration.fromMap(Map<String, dynamic> map) {
    return NatGatewayConfiguration(
      elasticIpAllocationIds: map['elasticIpAllocationIds'] == null
          ? null
          : (map['elasticIpAllocationIds'] as List).cast<String>(),
      strategy: NatGatewayStrategy.fromValue(map['strategy'] as String),
    );
  }
}
