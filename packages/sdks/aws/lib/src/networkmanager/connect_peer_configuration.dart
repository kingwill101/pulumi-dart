// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_peer_configuration_bgp_configuration.dart';

class ConnectPeerConfiguration {
  final pulumi.Input<List<ConnectPeerConfigurationBgpConfiguration>>? bgpConfigurations;
  /// Connect peer core network address.
  final pulumi.Input<String>? coreNetworkAddress;
  /// Inside IP addresses used for BGP peering. Required when the Connect attachment protocol is `GRE`. See `aws.networkmanager.ConnectAttachment` for details.
  final pulumi.Input<List<String>>? insideCidrBlocks;
  /// Connect peer address.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? peerAddress;
  final pulumi.Input<String>? protocol;

  /// Creates a new [ConnectPeerConfiguration].
  /// [bgpConfigurations] Optional.
  /// [coreNetworkAddress] Connect peer core network address.
  /// [insideCidrBlocks] Inside IP addresses used for BGP peering. Required when the Connect attachment protocol is `GRE`. See `aws.networkmanager.ConnectAttachment` for details.
  /// [peerAddress] Connect peer address.
  /// [protocol] Optional.
  ConnectPeerConfiguration({
    this.bgpConfigurations,
    this.coreNetworkAddress,
    this.insideCidrBlocks,
    this.peerAddress,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ConnectPeerConfigurationBgpConfiguration>, List<Map<String, dynamic>>>(bgpConfigurations, (value) => pulumi.Input.encodeList<ConnectPeerConfigurationBgpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'coreNetworkAddress': ?coreNetworkAddress,
      'insideCidrBlocks': ?insideCidrBlocks,
      'peerAddress': ?peerAddress,
      'protocol': ?protocol,
    };
  }

  factory ConnectPeerConfiguration.fromMap(Map<String, dynamic> map) {
    return ConnectPeerConfiguration(
      bgpConfigurations: map['bgpConfigurations'] == null ? null : ((pulumi.Input.decodeList<ConnectPeerConfigurationBgpConfiguration>(map['bgpConfigurations']!, (value) => ConnectPeerConfigurationBgpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      coreNetworkAddress: map['coreNetworkAddress'] == null ? null : ((map['coreNetworkAddress'] as String).input()).input(),
      insideCidrBlocks: map['insideCidrBlocks'] == null ? null : (((map['insideCidrBlocks'] as List).cast<String>()).input()).input(),
      peerAddress: map['peerAddress'] == null ? null : ((map['peerAddress'] as String).input()).input(),
      protocol: map['protocol'] == null ? null : ((map['protocol'] as String).input()).input(),
    );
  }
}

