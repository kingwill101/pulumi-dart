// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BgpPeer resources.
class BgpPeerState {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  final pulumi.Input<String?>? addressFamily;
  /// The IPv4 CIDR address to use to send traffic to Amazon.
  /// Required for IPv4 BGP peers on public virtual interfaces.
  final pulumi.Input<String?>? amazonAddress;
  /// The Direct Connect endpoint on which the BGP peer terminates.
  final pulumi.Input<String?>? awsDevice;
  /// BGP autonomous system number as an integer between `1` and `2147483646`. For larger values, use `bgpAsnLong`. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  final pulumi.Input<int?>? bgpAsn;
  /// BGP autonomous system number as an asplain decimal string between `1` and `4294967294`. This argument also accepts values in the `bgpAsn` range. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  final pulumi.Input<String?>? bgpAsnLong;
  /// The authentication key for BGP configuration.
  final pulumi.Input<String?>? bgpAuthKey;
  /// The ID of the BGP peer.
  final pulumi.Input<String?>? bgpPeerId;
  /// The Up/Down state of the BGP peer.
  final pulumi.Input<String?>? bgpStatus;
  /// The IPv4 CIDR destination address to which Amazon should send traffic.
  /// Required for IPv4 BGP peers on public virtual interfaces.
  final pulumi.Input<String?>? customerAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ID of the Direct Connect virtual interface on which to create the BGP peer.
  final pulumi.Input<String?>? virtualInterfaceId;

  /// Creates a new [BgpPeerState].
  /// [addressFamily] The address family for the BGP peer. `ipv4 ` or `ipv6`.
  /// [amazonAddress] The IPv4 CIDR address to use to send traffic to Amazon.
  /// [awsDevice] The Direct Connect endpoint on which the BGP peer terminates.
  /// [bgpAsn] BGP autonomous system number as an integer between `1` and `2147483646`. For larger values, use `bgpAsnLong`. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  /// [bgpAsnLong] BGP autonomous system number as an asplain decimal string between `1` and `4294967294`. This argument also accepts values in the `bgpAsn` range. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  /// [bgpAuthKey] The authentication key for BGP configuration.
  /// [bgpPeerId] The ID of the BGP peer.
  /// [bgpStatus] The Up/Down state of the BGP peer.
  /// [customerAddress] The IPv4 CIDR destination address to which Amazon should send traffic.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [virtualInterfaceId] The ID of the Direct Connect virtual interface on which to create the BGP peer.
  const BgpPeerState({
    this.addressFamily,
    this.amazonAddress,
    this.awsDevice,
    this.bgpAsn,
    this.bgpAsnLong,
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
      'bgpAsnLong': ?bgpAsnLong,
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
      addressFamily: (() { final guardedValue = map['addressFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      amazonAddress: (() { final guardedValue = map['amazonAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsDevice: (() { final guardedValue = map['awsDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpAsn: (() { final guardedValue = map['bgpAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      bgpAsnLong: (() { final guardedValue = map['bgpAsnLong']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpAuthKey: (() { final guardedValue = map['bgpAuthKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpPeerId: (() { final guardedValue = map['bgpPeerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpStatus: (() { final guardedValue = map['bgpStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerAddress: (() { final guardedValue = map['customerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualInterfaceId: (() { final guardedValue = map['virtualInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
