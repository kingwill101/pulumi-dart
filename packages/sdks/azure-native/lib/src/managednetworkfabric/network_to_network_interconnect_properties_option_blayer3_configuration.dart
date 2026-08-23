// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Common properties for Layer3Configuration.
class NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration {
  /// ASN of PE devices for CE/PE connectivity.Example : 28
  final pulumi.Input<double> peerASN;
  /// IPv4 Address Prefix.
  final pulumi.Input<String>? primaryIpv4Prefix;
  /// IPv6 Address Prefix.
  final pulumi.Input<String>? primaryIpv6Prefix;
  /// Secondary IPv4 Address Prefix.
  final pulumi.Input<String>? secondaryIpv4Prefix;
  /// Secondary IPv6 Address Prefix.
  final pulumi.Input<String>? secondaryIpv6Prefix;
  /// VLAN for CE/PE Layer 3 connectivity.Example : 501
  final pulumi.Input<int> vlanId;

  /// Creates a new [NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration].
  /// [peerASN] ASN of PE devices for CE/PE connectivity.Example : 28
  /// [primaryIpv4Prefix] IPv4 Address Prefix.
  /// [primaryIpv6Prefix] IPv6 Address Prefix.
  /// [secondaryIpv4Prefix] Secondary IPv4 Address Prefix.
  /// [secondaryIpv6Prefix] Secondary IPv6 Address Prefix.
  /// [vlanId] VLAN for CE/PE Layer 3 connectivity.Example : 501
  const NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration({
    required this.peerASN,
    this.primaryIpv4Prefix,
    this.primaryIpv6Prefix,
    this.secondaryIpv4Prefix,
    this.secondaryIpv6Prefix,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerASN': peerASN,
      'primaryIpv4Prefix': ?primaryIpv4Prefix,
      'primaryIpv6Prefix': ?primaryIpv6Prefix,
      'secondaryIpv4Prefix': ?secondaryIpv4Prefix,
      'secondaryIpv6Prefix': ?secondaryIpv6Prefix,
      'vlanId': vlanId,
    };
  }

  factory NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration.fromMap(Map<String, dynamic> map) {
    return NetworkToNetworkInterconnectPropertiesOptionBLayer3Configuration(
      peerASN: pulumi.Input.fromValue(map['peerASN'] as double),
      primaryIpv4Prefix: (() { final guardedValue = map['primaryIpv4Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryIpv6Prefix: (() { final guardedValue = map['primaryIpv6Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryIpv4Prefix: (() { final guardedValue = map['secondaryIpv4Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryIpv6Prefix: (() { final guardedValue = map['secondaryIpv6Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanId: pulumi.Input.fromValue(map['vlanId'] as int),
    );
  }
}
