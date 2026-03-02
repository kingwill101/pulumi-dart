// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectPeerConfigurationBgpConfiguration {
  /// Connect peer core network address.
  final pulumi.Input<String>? coreNetworkAddress;
  final pulumi.Input<int>? coreNetworkAsn;
  /// Connect peer address.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? peerAddress;
  /// Peer ASN. Supports 2-byte and 4-byte ASNs (1 to 4294967295).
  final pulumi.Input<String>? peerAsn;

  /// Creates a new [ConnectPeerConfigurationBgpConfiguration].
  /// [coreNetworkAddress] Connect peer core network address.
  /// [coreNetworkAsn] Optional.
  /// [peerAddress] Connect peer address.
  /// [peerAsn] Peer ASN. Supports 2-byte and 4-byte ASNs (1 to 4294967295).
  ConnectPeerConfigurationBgpConfiguration({
    this.coreNetworkAddress,
    this.coreNetworkAsn,
    this.peerAddress,
    this.peerAsn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreNetworkAddress': ?coreNetworkAddress,
      'coreNetworkAsn': ?coreNetworkAsn,
      'peerAddress': ?peerAddress,
      'peerAsn': ?peerAsn,
    };
  }

  factory ConnectPeerConfigurationBgpConfiguration.fromMap(Map<String, dynamic> map) {
    return ConnectPeerConfigurationBgpConfiguration(
      coreNetworkAddress: map['coreNetworkAddress'] == null ? null : (map['coreNetworkAddress'] as String).input(),
      coreNetworkAsn: map['coreNetworkAsn'] == null ? null : (map['coreNetworkAsn'] as int).input(),
      peerAddress: map['peerAddress'] == null ? null : (map['peerAddress'] as String).input(),
      peerAsn: map['peerAsn'] == null ? null : (map['peerAsn'] as String).input(),
    );
  }
}

