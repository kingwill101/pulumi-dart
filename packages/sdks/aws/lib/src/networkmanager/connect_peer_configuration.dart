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
      bgpConfigurations: (() { final guardedValue = map['bgpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectPeerConfigurationBgpConfiguration>(guardedValue, (value) => ConnectPeerConfigurationBgpConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      coreNetworkAddress: (() { final guardedValue = map['coreNetworkAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insideCidrBlocks: (() { final guardedValue = map['insideCidrBlocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      peerAddress: (() { final guardedValue = map['peerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

