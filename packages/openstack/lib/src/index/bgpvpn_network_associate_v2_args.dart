// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_bgpvpn_network_associate_v2_bgpvpn_network_associate_v2_args_doc}
/// The set of arguments for BgpvpnNetworkAssociateV2.
/// {@endtemplate}
/// {@macro pulumi_index_bgpvpn_network_associate_v2_bgpvpn_network_associate_v2_args_doc}
class BgpvpnNetworkAssociateV2Args {
  /// The ID of the BGP VPN to which the network will be
  /// associated. Changing this creates a new BGP VPN network association
  final pulumi.Input<String> bgpvpnId;
  /// The ID of the network to be associated with the BGP
  /// VPN. Changing this creates a new BGP VPN network association.
  final pulumi.Input<String> networkId;
  /// The ID of the project that owns the BGP VPN network
  /// association. Only administrative and users with `advsvc` role can specify a
  /// project ID other than their own. Changing this creates a new BGP VPN network
  /// association.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a BGP VPN network association. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new BGP VPN network association.
  final pulumi.Input<String>? region;

  /// Creates a new [BgpvpnNetworkAssociateV2Args].
  /// [bgpvpnId] The ID of the BGP VPN to which the network will be
  /// [networkId] The ID of the network to be associated with the BGP
  /// [projectId] The ID of the project that owns the BGP VPN network
  /// [region] The region in which to obtain the V2 Networking client.
  BgpvpnNetworkAssociateV2Args({
    required String bgpvpnId,
    required String networkId,
    String? projectId,
    String? region,
  }) :
      bgpvpnId = pulumi.Input.asInput<String>(bgpvpnId),
      networkId = pulumi.Input.asInput<String>(networkId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpvpnId': bgpvpnId,
      'networkId': networkId,
      'projectId': ?projectId,
      'region': ?region,
    };
  }

  factory BgpvpnNetworkAssociateV2Args.fromMap(Map<String, dynamic> map) {
    return BgpvpnNetworkAssociateV2Args(
      bgpvpnId: map['bgpvpnId'] as String,
      networkId: map['networkId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

