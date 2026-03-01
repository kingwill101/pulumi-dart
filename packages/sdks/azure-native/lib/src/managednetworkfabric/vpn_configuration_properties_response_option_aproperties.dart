// ignore_for_file: unused_element, unnecessary_cast

import 'bfd_configuration_response.dart';

/// option A properties
class VpnConfigurationPropertiesResponseOptionAProperties {
  /// BFD Configuration properties.
  final BfdConfigurationResponse? bfdConfiguration;
  /// MTU to use for option A peering.
  final int? mtu;
  /// Peer ASN number.Example : 28
  final double peerASN;
  /// IPv4 Address Prefix.
  final String? primaryIpv4Prefix;
  /// IPv6 Address Prefix.
  final String? primaryIpv6Prefix;
  /// Secondary IPv4 Address Prefix.
  final String? secondaryIpv4Prefix;
  /// Secondary IPv6 Address Prefix.
  final String? secondaryIpv6Prefix;
  /// Vlan Id.Example : 501
  final int vlanId;

  /// Creates a new [VpnConfigurationPropertiesResponseOptionAProperties].
  /// [bfdConfiguration] BFD Configuration properties.
  /// [mtu] MTU to use for option A peering.
  /// [peerASN] Peer ASN number.Example : 28
  /// [primaryIpv4Prefix] IPv4 Address Prefix.
  /// [primaryIpv6Prefix] IPv6 Address Prefix.
  /// [secondaryIpv4Prefix] Secondary IPv4 Address Prefix.
  /// [secondaryIpv6Prefix] Secondary IPv6 Address Prefix.
  /// [vlanId] Vlan Id.Example : 501
  VpnConfigurationPropertiesResponseOptionAProperties({
    this.bfdConfiguration,
    this.mtu,
    required this.peerASN,
    this.primaryIpv4Prefix,
    this.primaryIpv6Prefix,
    this.secondaryIpv4Prefix,
    this.secondaryIpv6Prefix,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bfdConfiguration': ?bfdConfiguration == null ? null : bfdConfiguration!.toMap(),
      'mtu': ?mtu,
      'peerASN': peerASN,
      'primaryIpv4Prefix': ?primaryIpv4Prefix,
      'primaryIpv6Prefix': ?primaryIpv6Prefix,
      'secondaryIpv4Prefix': ?secondaryIpv4Prefix,
      'secondaryIpv6Prefix': ?secondaryIpv6Prefix,
      'vlanId': vlanId,
    };
  }

  factory VpnConfigurationPropertiesResponseOptionAProperties.fromMap(Map<String, dynamic> map) {
    return VpnConfigurationPropertiesResponseOptionAProperties(
      bfdConfiguration: map['bfdConfiguration'] == null ? null : BfdConfigurationResponse.fromMap((map['bfdConfiguration'] as Map).cast<String, dynamic>()),
      mtu: map['mtu'] == null ? null : map['mtu'] as int,
      peerASN: map['peerASN'] as double,
      primaryIpv4Prefix: map['primaryIpv4Prefix'] == null ? null : map['primaryIpv4Prefix'] as String,
      primaryIpv6Prefix: map['primaryIpv6Prefix'] == null ? null : map['primaryIpv6Prefix'] as String,
      secondaryIpv4Prefix: map['secondaryIpv4Prefix'] == null ? null : map['secondaryIpv4Prefix'] as String,
      secondaryIpv6Prefix: map['secondaryIpv6Prefix'] == null ? null : map['secondaryIpv6Prefix'] as String,
      vlanId: map['vlanId'] as int,
    );
  }
}

