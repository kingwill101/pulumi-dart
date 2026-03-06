// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_transit_gateway_peering_transit_gateway_peering_args_doc}
/// The set of arguments for TransitGatewayPeering.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_transit_gateway_peering_transit_gateway_peering_args_doc}
class TransitGatewayPeeringArgs {
  /// ID of a core network.
  final pulumi.Input<String> coreNetworkId;
  /// Key-value tags for the peering. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// ARN of the transit gateway for the peering request.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> transitGatewayArn;

  /// Creates a new [TransitGatewayPeeringArgs].
  /// [coreNetworkId] ID of a core network.
  /// [tags] Key-value tags for the peering. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayArn] ARN of the transit gateway for the peering request.
  const TransitGatewayPeeringArgs({
    required this.coreNetworkId,
    this.tags,
    required this.transitGatewayArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreNetworkId': coreNetworkId,
      'tags': ?tags,
      'transitGatewayArn': transitGatewayArn,
    };
  }

  factory TransitGatewayPeeringArgs.fromMap(Map<String, dynamic> map) {
    return TransitGatewayPeeringArgs(
      coreNetworkId: pulumi.Input.fromValue(map['coreNetworkId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayArn: pulumi.Input.fromValue(map['transitGatewayArn'] as String),
    );
  }
}

