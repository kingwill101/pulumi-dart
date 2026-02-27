// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TransitGatewayPeering.
class TransitGatewayPeeringArgs {
  /// ID of a core network.
  final pulumi.Input<String> coreNetworkId;

  /// Key-value tags for the peering. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// ARN of the transit gateway for the peering request.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> transitGatewayArn;

  TransitGatewayPeeringArgs({
    required this.coreNetworkId,
    this.tags,
    required this.transitGatewayArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreNetworkId'] = coreNetworkId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['transitGatewayArn'] = transitGatewayArn;
    return map;
  }

  factory TransitGatewayPeeringArgs.fromMap(Map<String, dynamic> map) {
    return TransitGatewayPeeringArgs(
      coreNetworkId: pulumi.Input.asInput<String>(map['coreNetworkId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayArn: pulumi.Input.asInput<String>(map['transitGatewayArn']),
    );
  }
}
