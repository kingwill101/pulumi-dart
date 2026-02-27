// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BgpPeer.
class BgpPeerArgs {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  final Input<String> addressFamily;

  /// The IPv4 CIDR address to use to send traffic to Amazon.
  /// Required for IPv4 BGP peers on public virtual interfaces.
  final Input<String>? amazonAddress;

  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  final Input<int> bgpAsn;

  /// The authentication key for BGP configuration.
  final Input<String>? bgpAuthKey;

  /// The IPv4 CIDR destination address to which Amazon should send traffic.
  /// Required for IPv4 BGP peers on public virtual interfaces.
  final Input<String>? customerAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the Direct Connect virtual interface on which to create the BGP peer.
  final Input<String> virtualInterfaceId;

  BgpPeerArgs({
    required this.addressFamily,
    this.amazonAddress,
    required this.bgpAsn,
    this.bgpAuthKey,
    this.customerAddress,
    this.region,
    required this.virtualInterfaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressFamily'] = addressFamily;
    final amazonAddressValue = amazonAddress;
    if (amazonAddressValue != null) {
      map['amazonAddress'] = amazonAddressValue;
    }
    map['bgpAsn'] = bgpAsn;
    final bgpAuthKeyValue = bgpAuthKey;
    if (bgpAuthKeyValue != null) {
      map['bgpAuthKey'] = bgpAuthKeyValue;
    }
    final customerAddressValue = customerAddress;
    if (customerAddressValue != null) {
      map['customerAddress'] = customerAddressValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['virtualInterfaceId'] = virtualInterfaceId;
    return map;
  }

  factory BgpPeerArgs.fromMap(Map<String, dynamic> map) {
    return BgpPeerArgs(
      addressFamily: Input.asInput<String>(map['addressFamily']),
      amazonAddress: Input.asOptionalInput<String>(map['amazonAddress']),
      bgpAsn: Input.asInput<int>(map['bgpAsn']),
      bgpAuthKey: Input.asOptionalInput<String>(map['bgpAuthKey']),
      customerAddress: Input.asOptionalInput<String>(map['customerAddress']),
      region: Input.asOptionalInput<String>(map['region']),
      virtualInterfaceId: Input.asInput<String>(map['virtualInterfaceId']),
    );
  }
}
