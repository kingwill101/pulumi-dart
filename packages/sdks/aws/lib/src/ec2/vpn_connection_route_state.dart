// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpnConnectionRoute resources.
class VpnConnectionRouteState {
  /// The CIDR block associated with the local subnet of the customer network.
  final pulumi.Input<String>? destinationCidrBlock;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPN connection.
  final pulumi.Input<String>? vpnConnectionId;

  /// Creates a new [VpnConnectionRouteState].
  /// [destinationCidrBlock] The CIDR block associated with the local subnet of the customer network.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpnConnectionId] The ID of the VPN connection.
  VpnConnectionRouteState({
    this.destinationCidrBlock,
    this.region,
    this.vpnConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidrBlock': ?destinationCidrBlock,
      'region': ?region,
      'vpnConnectionId': ?vpnConnectionId,
    };
  }

  factory VpnConnectionRouteState.fromMap(Map<String, dynamic> map) {
    return VpnConnectionRouteState(
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : ((map['destinationCidrBlock'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      vpnConnectionId: map['vpnConnectionId'] == null ? null : ((map['vpnConnectionId'] as String).input()).input(),
    );
  }
}

