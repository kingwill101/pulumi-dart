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
    pulumi.Output<String>? addressFamily,
    pulumi.Output<String>? amazonAddress,
    pulumi.Output<String>? awsDevice,
    pulumi.Output<int>? bgpAsn,
    pulumi.Output<String>? bgpAuthKey,
    pulumi.Output<String>? bgpPeerId,
    pulumi.Output<String>? bgpStatus,
    pulumi.Output<String>? customerAddress,
    pulumi.Output<String>? region,
    pulumi.Output<String>? virtualInterfaceId,
  }) :
      addressFamily = pulumi.Input.asOptionalInput<String>(addressFamily),
      amazonAddress = pulumi.Input.asOptionalInput<String>(amazonAddress),
      awsDevice = pulumi.Input.asOptionalInput<String>(awsDevice),
      bgpAsn = pulumi.Input.asOptionalInput<int>(bgpAsn),
      bgpAuthKey = pulumi.Input.asOptionalInput<String>(bgpAuthKey),
      bgpPeerId = pulumi.Input.asOptionalInput<String>(bgpPeerId),
      bgpStatus = pulumi.Input.asOptionalInput<String>(bgpStatus),
      customerAddress = pulumi.Input.asOptionalInput<String>(customerAddress),
      region = pulumi.Input.asOptionalInput<String>(region),
      virtualInterfaceId = pulumi.Input.asOptionalInput<String>(virtualInterfaceId);

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
      addressFamily: map['addressFamily'] == null ? null : pulumi.Output.create<String>(map['addressFamily'] as String),
      amazonAddress: map['amazonAddress'] == null ? null : pulumi.Output.create<String>(map['amazonAddress'] as String),
      awsDevice: map['awsDevice'] == null ? null : pulumi.Output.create<String>(map['awsDevice'] as String),
      bgpAsn: map['bgpAsn'] == null ? null : pulumi.Output.create<int>(map['bgpAsn'] as int),
      bgpAuthKey: map['bgpAuthKey'] == null ? null : pulumi.Output.create<String>(map['bgpAuthKey'] as String),
      bgpPeerId: map['bgpPeerId'] == null ? null : pulumi.Output.create<String>(map['bgpPeerId'] as String),
      bgpStatus: map['bgpStatus'] == null ? null : pulumi.Output.create<String>(map['bgpStatus'] as String),
      customerAddress: map['customerAddress'] == null ? null : pulumi.Output.create<String>(map['customerAddress'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      virtualInterfaceId: map['virtualInterfaceId'] == null ? null : pulumi.Output.create<String>(map['virtualInterfaceId'] as String),
    );
  }
}

