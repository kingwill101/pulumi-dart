// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_bgp_peer_bgp_peer_args_doc}
/// The set of arguments for BgpPeer.
/// {@endtemplate}
/// {@macro pulumi_directconnect_bgp_peer_bgp_peer_args_doc}
class BgpPeerArgs {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  final pulumi.Input<String> addressFamily;

  /// The IPv4 CIDR address to use to send traffic to Amazon.
  /// Required for IPv4 BGP peers on public virtual interfaces.
  final pulumi.Input<String>? amazonAddress;

  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  final pulumi.Input<int> bgpAsn;

  /// The authentication key for BGP configuration.
  final pulumi.Input<String>? bgpAuthKey;

  /// The IPv4 CIDR destination address to which Amazon should send traffic.
  /// Required for IPv4 BGP peers on public virtual interfaces.
  final pulumi.Input<String>? customerAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the Direct Connect virtual interface on which to create the BGP peer.
  final pulumi.Input<String> virtualInterfaceId;

  /// Creates a new [BgpPeerArgs].
  /// [addressFamily] The address family for the BGP peer. `ipv4 ` or `ipv6`.
  /// [amazonAddress] The IPv4 CIDR address to use to send traffic to Amazon.
  /// [bgpAsn] The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  /// [bgpAuthKey] The authentication key for BGP configuration.
  /// [customerAddress] The IPv4 CIDR destination address to which Amazon should send traffic.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [virtualInterfaceId] The ID of the Direct Connect virtual interface on which to create the BGP peer.
  BgpPeerArgs({
    required String addressFamily,
    String? amazonAddress,
    required int bgpAsn,
    String? bgpAuthKey,
    String? customerAddress,
    String? region,
    required String virtualInterfaceId,
  }) : addressFamily = pulumi.Input.asInput<String>(addressFamily),
       amazonAddress = pulumi.Input.asOptionalInput<String>(amazonAddress),
       bgpAsn = pulumi.Input.asInput<int>(bgpAsn),
       bgpAuthKey = pulumi.Input.asOptionalInput<String>(bgpAuthKey),
       customerAddress = pulumi.Input.asOptionalInput<String>(customerAddress),
       region = pulumi.Input.asOptionalInput<String>(region),
       virtualInterfaceId = pulumi.Input.asInput<String>(virtualInterfaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': addressFamily,
      'amazonAddress': ?amazonAddress,
      'bgpAsn': bgpAsn,
      'bgpAuthKey': ?bgpAuthKey,
      'customerAddress': ?customerAddress,
      'region': ?region,
      'virtualInterfaceId': virtualInterfaceId,
    };
  }

  factory BgpPeerArgs.fromMap(Map<String, dynamic> map) {
    return BgpPeerArgs(
      addressFamily: map['addressFamily'] as String,
      amazonAddress: map['amazonAddress'] == null
          ? null
          : map['amazonAddress'] as String,
      bgpAsn: map['bgpAsn'] as int,
      bgpAuthKey: map['bgpAuthKey'] == null
          ? null
          : map['bgpAuthKey'] as String,
      customerAddress: map['customerAddress'] == null
          ? null
          : map['customerAddress'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      virtualInterfaceId: map['virtualInterfaceId'] as String,
    );
  }
}
