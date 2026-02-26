// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connect_peer_configuration_bgp_configuration/connect_peer_configuration_bgp_configuration.dart';

class ConnectPeerConfiguration {
  final List<ConnectPeerConfigurationBgpConfiguration>? bgpConfigurations;

  /// Connect peer core network address.
  final String? coreNetworkAddress;

  /// Inside IP addresses used for BGP peering. Required when the Connect attachment protocol is `GRE`. See <span pulumi-lang-nodejs="`aws.networkmanager.ConnectAttachment`" pulumi-lang-dotnet="`aws.networkmanager.ConnectAttachment`" pulumi-lang-go="`networkmanager.ConnectAttachment`" pulumi-lang-python="`networkmanager.ConnectAttachment`" pulumi-lang-yaml="`aws.networkmanager.ConnectAttachment`" pulumi-lang-java="`aws.networkmanager.ConnectAttachment`">`aws.networkmanager.ConnectAttachment`</span> for details.
  final List<String>? insideCidrBlocks;

  /// Connect peer address.
  ///
  /// The following arguments are optional:
  final String? peerAddress;
  final String? protocol;

  ConnectPeerConfiguration({
    this.bgpConfigurations,
    this.coreNetworkAddress,
    this.insideCidrBlocks,
    this.peerAddress,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bgpConfigurationsValue = bgpConfigurations;
    if (bgpConfigurationsValue != null) {
      map['bgpConfigurations'] = Input.encodeList<
              ConnectPeerConfigurationBgpConfiguration, Map<String, dynamic>>(
          bgpConfigurationsValue, (value) => value.toMap());
    }
    final coreNetworkAddressValue = coreNetworkAddress;
    if (coreNetworkAddressValue != null) {
      map['coreNetworkAddress'] = coreNetworkAddressValue;
    }
    final insideCidrBlocksValue = insideCidrBlocks;
    if (insideCidrBlocksValue != null) {
      map['insideCidrBlocks'] = insideCidrBlocksValue;
    }
    final peerAddressValue = peerAddress;
    if (peerAddressValue != null) {
      map['peerAddress'] = peerAddressValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    return map;
  }

  factory ConnectPeerConfiguration.fromMap(Map<String, dynamic> map) {
    return ConnectPeerConfiguration(
      bgpConfigurations: map['bgpConfigurations'] == null
          ? null
          : Input.decodeList<ConnectPeerConfigurationBgpConfiguration>(
              map['bgpConfigurations'],
              (value) => ConnectPeerConfigurationBgpConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      coreNetworkAddress: map['coreNetworkAddress'] == null
          ? null
          : map['coreNetworkAddress'] as String,
      insideCidrBlocks: map['insideCidrBlocks'] == null
          ? null
          : (map['insideCidrBlocks'] as List).cast<String>(),
      peerAddress:
          map['peerAddress'] == null ? null : map['peerAddress'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}
