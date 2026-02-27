// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpnConnectionRoute.
class VpnConnectionRouteArgs {
  /// The CIDR block associated with the local subnet of the customer network.
  final pulumi.Input<String> destinationCidrBlock;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the VPN connection.
  final pulumi.Input<String> vpnConnectionId;

  VpnConnectionRouteArgs({
    required this.destinationCidrBlock,
    this.region,
    required this.vpnConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationCidrBlock'] = destinationCidrBlock;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpnConnectionId'] = vpnConnectionId;
    return map;
  }

  factory VpnConnectionRouteArgs.fromMap(Map<String, dynamic> map) {
    return VpnConnectionRouteArgs(
      destinationCidrBlock:
          pulumi.Input.asInput<String>(map['destinationCidrBlock']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpnConnectionId: pulumi.Input.asInput<String>(map['vpnConnectionId']),
    );
  }
}
