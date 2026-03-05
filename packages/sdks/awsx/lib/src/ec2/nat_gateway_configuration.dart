// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_strategy.dart';

/// Configuration for NAT Gateways.
class NatGatewayConfiguration {
  /// A list of EIP allocation IDs to assign to the NAT Gateways. Optional. If specified, the number of supplied values must match the chosen strategy (either one, or the number of availability zones).
  final pulumi.Input<List<String>>? elasticIpAllocationIds;
  /// The strategy for deploying NAT Gateways.
  final pulumi.Input<NatGatewayStrategy> strategy;

  /// Creates a new [NatGatewayConfiguration].
  /// [elasticIpAllocationIds] A list of EIP allocation IDs to assign to the NAT Gateways. Optional. If specified, the number of supplied values must match the chosen strategy (either one, or the number of availability zones).
  /// [strategy] The strategy for deploying NAT Gateways.
  NatGatewayConfiguration({
    this.elasticIpAllocationIds,
    required this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticIpAllocationIds': ?elasticIpAllocationIds,
      'strategy': pulumi.Input.mapInputValue<NatGatewayStrategy, String>(strategy, (value) => value.wireValue),
    };
  }

  factory NatGatewayConfiguration.fromMap(Map<String, dynamic> map) {
    return NatGatewayConfiguration(
      elasticIpAllocationIds: (() { final guardedValue = map['elasticIpAllocationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      strategy: pulumi.Input.fromValue(NatGatewayStrategy.fromValue(map['strategy']! as String)),
    );
  }
}

