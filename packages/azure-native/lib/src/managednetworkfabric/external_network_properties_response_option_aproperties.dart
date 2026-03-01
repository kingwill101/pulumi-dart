// ignore_for_file: unused_element, unnecessary_cast

import 'bfd_configuration_response.dart';

/// option A properties object
class ExternalNetworkPropertiesResponseOptionAProperties {
  /// BFD configuration properties
  final BfdConfigurationResponse? bfdConfiguration;
  /// Egress Acl. ARM resource ID of Access Control Lists.
  final String? egressAclId;
  /// Fabric ASN number. Example 65001
  final double fabricASN;
  /// Ingress Acl. ARM resource ID of Access Control Lists.
  final String? ingressAclId;
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
  /// Vlan identifier. Example : 501
  final int vlanId;

  /// Creates a new [ExternalNetworkPropertiesResponseOptionAProperties].
  /// [bfdConfiguration] BFD configuration properties
  /// [egressAclId] Egress Acl. ARM resource ID of Access Control Lists.
  /// [fabricASN] Fabric ASN number. Example 65001
  /// [ingressAclId] Ingress Acl. ARM resource ID of Access Control Lists.
  /// [mtu] MTU to use for option A peering.
  /// [peerASN] Peer ASN number.Example : 28
  /// [primaryIpv4Prefix] IPv4 Address Prefix.
  /// [primaryIpv6Prefix] IPv6 Address Prefix.
  /// [secondaryIpv4Prefix] Secondary IPv4 Address Prefix.
  /// [secondaryIpv6Prefix] Secondary IPv6 Address Prefix.
  /// [vlanId] Vlan identifier. Example : 501
  ExternalNetworkPropertiesResponseOptionAProperties({
    this.bfdConfiguration,
    this.egressAclId,
    required this.fabricASN,
    this.ingressAclId,
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
      'egressAclId': ?egressAclId,
      'fabricASN': fabricASN,
      'ingressAclId': ?ingressAclId,
      'mtu': ?mtu,
      'peerASN': peerASN,
      'primaryIpv4Prefix': ?primaryIpv4Prefix,
      'primaryIpv6Prefix': ?primaryIpv6Prefix,
      'secondaryIpv4Prefix': ?secondaryIpv4Prefix,
      'secondaryIpv6Prefix': ?secondaryIpv6Prefix,
      'vlanId': vlanId,
    };
  }

  factory ExternalNetworkPropertiesResponseOptionAProperties.fromMap(Map<String, dynamic> map) {
    return ExternalNetworkPropertiesResponseOptionAProperties(
      bfdConfiguration: map['bfdConfiguration'] == null ? null : BfdConfigurationResponse.fromMap((map['bfdConfiguration'] as Map).cast<String, dynamic>()),
      egressAclId: map['egressAclId'] == null ? null : map['egressAclId'] as String,
      fabricASN: map['fabricASN'] as double,
      ingressAclId: map['ingressAclId'] == null ? null : map['ingressAclId'] as String,
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

