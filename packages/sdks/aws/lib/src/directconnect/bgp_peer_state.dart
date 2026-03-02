// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BgpPeer resources.
class BgpPeerState {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  final pulumi.Input<String>? addressFamily;
  /// The IPv4 CIDR address to use to send traffic to Amazon.
  /// Required for IPv4 BGP peers on public virtual interfaces.
  final pulumi.Input<String>? amazonAddress;
  /// The Direct Connect endpoint on which the BGP peer terminates.
  final pulumi.Input<String>? awsDevice;
  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  final pulumi.Input<int>? bgpAsn;
  /// The authentication key for BGP configuration.
  final pulumi.Input<String>? bgpAuthKey;
  /// The ID of the BGP peer.
  final pulumi.Input<String>? bgpPeerId;
  /// The Up/Down state of the BGP peer.
  final pulumi.Input<String>? bgpStatus;
  /// The IPv4 CIDR destination address to which Amazon should send traffic.
  /// Required for IPv4 BGP peers on public virtual interfaces.
  final pulumi.Input<String>? customerAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the Direct Connect virtual interface on which to create the BGP peer.
  final pulumi.Input<String>? virtualInterfaceId;

  /// Creates a new [BgpPeerState].
  /// [addressFamily] The address family for the BGP peer. `ipv4 ` or `ipv6`.
  /// [amazonAddress] The IPv4 CIDR address to use to send traffic to Amazon.
  /// [awsDevice] The Direct Connect endpoint on which the BGP peer terminates.
  /// [bgpAsn] The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  /// [bgpAuthKey] The authentication key for BGP configuration.
  /// [bgpPeerId] The ID of the BGP peer.
  /// [bgpStatus] The Up/Down state of the BGP peer.
  /// [customerAddress] The IPv4 CIDR destination address to which Amazon should send traffic.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [virtualInterfaceId] The ID of the Direct Connect virtual interface on which to create the BGP peer.
  BgpPeerState({
    this.addressFamily,
    this.amazonAddress,
    this.awsDevice,
    this.bgpAsn,
    this.bgpAuthKey,
    this.bgpPeerId,
    this.bgpStatus,
    this.customerAddress,
    this.region,
    this.virtualInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'amazonAddress': ?amazonAddress,
      'awsDevice': ?awsDevice,
      'bgpAsn': ?bgpAsn,
      'bgpAuthKey': ?bgpAuthKey,
      'bgpPeerId': ?bgpPeerId,
      'bgpStatus': ?bgpStatus,
      'customerAddress': ?customerAddress,
      'region': ?region,
      'virtualInterfaceId': ?virtualInterfaceId,
    };
  }

  factory BgpPeerState.fromMap(Map<String, dynamic> map) {
    return BgpPeerState(
      addressFamily: map['addressFamily'] == null ? null : ((map['addressFamily'] as String).input()).input(),
      amazonAddress: map['amazonAddress'] == null ? null : ((map['amazonAddress'] as String).input()).input(),
      awsDevice: map['awsDevice'] == null ? null : ((map['awsDevice'] as String).input()).input(),
      bgpAsn: map['bgpAsn'] == null ? null : ((map['bgpAsn'] as int).input()).input(),
      bgpAuthKey: map['bgpAuthKey'] == null ? null : ((map['bgpAuthKey'] as String).input()).input(),
      bgpPeerId: map['bgpPeerId'] == null ? null : ((map['bgpPeerId'] as String).input()).input(),
      bgpStatus: map['bgpStatus'] == null ? null : ((map['bgpStatus'] as String).input()).input(),
      customerAddress: map['customerAddress'] == null ? null : ((map['customerAddress'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      virtualInterfaceId: map['virtualInterfaceId'] == null ? null : ((map['virtualInterfaceId'] as String).input()).input(),
    );
  }
}

