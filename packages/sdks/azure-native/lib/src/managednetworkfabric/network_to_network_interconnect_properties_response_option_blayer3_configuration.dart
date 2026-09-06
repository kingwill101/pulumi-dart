// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Common properties for Layer3Configuration.
class NetworkToNetworkInterconnectPropertiesResponseOptionBLayer3Configuration {
  /// ASN of CE devices for CE/PE connectivity.
  final pulumi.Input<double> fabricASN;
  /// ASN of PE devices for CE/PE connectivity.Example : 28
  final pulumi.Input<double> peerASN;
  /// IPv4 Address Prefix.
  final pulumi.Input<String?>? primaryIpv4Prefix;
  /// IPv6 Address Prefix.
  final pulumi.Input<String?>? primaryIpv6Prefix;
  /// Secondary IPv4 Address Prefix.
  final pulumi.Input<String?>? secondaryIpv4Prefix;
  /// Secondary IPv6 Address Prefix.
  final pulumi.Input<String?>? secondaryIpv6Prefix;
  /// VLAN for CE/PE Layer 3 connectivity.Example : 501
  final pulumi.Input<int> vlanId;

  /// Creates a new [NetworkToNetworkInterconnectPropertiesResponseOptionBLayer3Configuration].
  /// [fabricASN] ASN of CE devices for CE/PE connectivity.
  /// [peerASN] ASN of PE devices for CE/PE connectivity.Example : 28
  /// [primaryIpv4Prefix] IPv4 Address Prefix.
  /// [primaryIpv6Prefix] IPv6 Address Prefix.
  /// [secondaryIpv4Prefix] Secondary IPv4 Address Prefix.
  /// [secondaryIpv6Prefix] Secondary IPv6 Address Prefix.
  /// [vlanId] VLAN for CE/PE Layer 3 connectivity.Example : 501
  const NetworkToNetworkInterconnectPropertiesResponseOptionBLayer3Configuration({
    required this.fabricASN,
    required this.peerASN,
    this.primaryIpv4Prefix,
    this.primaryIpv6Prefix,
    this.secondaryIpv4Prefix,
    this.secondaryIpv6Prefix,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricASN': fabricASN,
      'peerASN': peerASN,
      'primaryIpv4Prefix': ?primaryIpv4Prefix,
      'primaryIpv6Prefix': ?primaryIpv6Prefix,
      'secondaryIpv4Prefix': ?secondaryIpv4Prefix,
      'secondaryIpv6Prefix': ?secondaryIpv6Prefix,
      'vlanId': vlanId,
    };
  }

  factory NetworkToNetworkInterconnectPropertiesResponseOptionBLayer3Configuration.fromMap(Map<String, dynamic> map) {
    return NetworkToNetworkInterconnectPropertiesResponseOptionBLayer3Configuration(
      fabricASN: pulumi.Input.fromValue((map['fabricASN'] as num).toDouble()),
      peerASN: pulumi.Input.fromValue((map['peerASN'] as num).toDouble()),
      primaryIpv4Prefix: (() { final guardedValue = map['primaryIpv4Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryIpv6Prefix: (() { final guardedValue = map['primaryIpv6Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryIpv4Prefix: (() { final guardedValue = map['secondaryIpv4Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryIpv6Prefix: (() { final guardedValue = map['secondaryIpv6Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['vlanId'])),
    );
  }
}
