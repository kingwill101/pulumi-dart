// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bfd_configuration_response.dart';

/// option A properties object
class ExternalNetworkPropertiesResponseOptionAProperties {
  /// BFD configuration properties
  final pulumi.Input<BfdConfigurationResponse>? bfdConfiguration;
  /// Egress Acl. ARM resource ID of Access Control Lists.
  final pulumi.Input<String>? egressAclId;
  /// Fabric ASN number. Example 65001
  final pulumi.Input<double> fabricASN;
  /// Ingress Acl. ARM resource ID of Access Control Lists.
  final pulumi.Input<String>? ingressAclId;
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
  /// Vlan identifier. Example : 501
  final pulumi.Input<int> vlanId;

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
  const ExternalNetworkPropertiesResponseOptionAProperties({
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
      'bfdConfiguration': ?pulumi.Input.mapOptionalInputValue<BfdConfigurationResponse, Map<String, dynamic>>(bfdConfiguration, (value) => value.toMap()),
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
      bfdConfiguration: (() { final guardedValue = map['bfdConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BfdConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      egressAclId: (() { final guardedValue = map['egressAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fabricASN: pulumi.Input.fromValue(map['fabricASN'] as double),
      ingressAclId: (() { final guardedValue = map['ingressAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peerASN: pulumi.Input.fromValue(map['peerASN'] as double),
      primaryIpv4Prefix: (() { final guardedValue = map['primaryIpv4Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryIpv6Prefix: (() { final guardedValue = map['primaryIpv6Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryIpv4Prefix: (() { final guardedValue = map['secondaryIpv4Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryIpv6Prefix: (() { final guardedValue = map['secondaryIpv6Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlanId: pulumi.Input.fromValue(map['vlanId'] as int),
    );
  }
}
