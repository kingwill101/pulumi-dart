// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bfd_configuration.dart';

/// option A properties
class VpnConfigurationPropertiesOptionAProperties {
  /// BFD Configuration properties.
  final pulumi.Input<BfdConfiguration>? bfdConfiguration;
  /// MTU to use for option A peering.
  final pulumi.Input<int>? mtu;
  /// Peer ASN number.Example : 28
  final pulumi.Input<double> peerASN;
  /// IPv4 Address Prefix.
  final pulumi.Input<String>? primaryIpv4Prefix;
  /// IPv6 Address Prefix.
  final pulumi.Input<String>? primaryIpv6Prefix;
  /// Secondary IPv4 Address Prefix.
  final pulumi.Input<String>? secondaryIpv4Prefix;
  /// Secondary IPv6 Address Prefix.
  final pulumi.Input<String>? secondaryIpv6Prefix;
  /// Vlan Id.Example : 501
  final pulumi.Input<int> vlanId;

  /// Creates a new [VpnConfigurationPropertiesOptionAProperties].
  /// [bfdConfiguration] BFD Configuration properties.
  /// [mtu] MTU to use for option A peering.
  /// [peerASN] Peer ASN number.Example : 28
  /// [primaryIpv4Prefix] IPv4 Address Prefix.
  /// [primaryIpv6Prefix] IPv6 Address Prefix.
  /// [secondaryIpv4Prefix] Secondary IPv4 Address Prefix.
  /// [secondaryIpv6Prefix] Secondary IPv6 Address Prefix.
  /// [vlanId] Vlan Id.Example : 501
  VpnConfigurationPropertiesOptionAProperties({
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
      'bfdConfiguration': ?pulumi.Input.mapOptionalInputValue<BfdConfiguration, Map<String, dynamic>>(bfdConfiguration, (value) => value.toMap()),
      'mtu': ?mtu,
      'peerASN': peerASN,
      'primaryIpv4Prefix': ?primaryIpv4Prefix,
      'primaryIpv6Prefix': ?primaryIpv6Prefix,
      'secondaryIpv4Prefix': ?secondaryIpv4Prefix,
      'secondaryIpv6Prefix': ?secondaryIpv6Prefix,
      'vlanId': vlanId,
    };
  }

  factory VpnConfigurationPropertiesOptionAProperties.fromMap(Map<String, dynamic> map) {
    return VpnConfigurationPropertiesOptionAProperties(
      bfdConfiguration: map['bfdConfiguration'] == null ? null : (BfdConfiguration.fromMap((map['bfdConfiguration']! as Map).cast<String, dynamic>())).input(),
      mtu: map['mtu'] == null ? null : (map['mtu']! as int).input(),
      peerASN: (map['peerASN'] as double).input(),
      primaryIpv4Prefix: map['primaryIpv4Prefix'] == null ? null : (map['primaryIpv4Prefix']! as String).input(),
      primaryIpv6Prefix: map['primaryIpv6Prefix'] == null ? null : (map['primaryIpv6Prefix']! as String).input(),
      secondaryIpv4Prefix: map['secondaryIpv4Prefix'] == null ? null : (map['secondaryIpv4Prefix']! as String).input(),
      secondaryIpv6Prefix: map['secondaryIpv6Prefix'] == null ? null : (map['secondaryIpv6Prefix']! as String).input(),
      vlanId: (map['vlanId'] as int).input(),
    );
  }
}

