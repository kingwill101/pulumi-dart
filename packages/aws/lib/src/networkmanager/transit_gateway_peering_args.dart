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
  TransitGatewayPeeringArgs({
    required String coreNetworkId,
    Map<String, String>? tags,
    required String transitGatewayArn,
  }) : coreNetworkId = pulumi.Input.asInput<String>(coreNetworkId),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       transitGatewayArn = pulumi.Input.asInput<String>(transitGatewayArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreNetworkId': coreNetworkId,
      'tags': ?tags,
      'transitGatewayArn': transitGatewayArn,
    };
  }

  factory TransitGatewayPeeringArgs.fromMap(Map<String, dynamic> map) {
    return TransitGatewayPeeringArgs(
      coreNetworkId: map['coreNetworkId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitGatewayArn: map['transitGatewayArn'] as String,
    );
  }
}
