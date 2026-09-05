// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectPeerConfigurationBgpConfiguration {
  /// Connect peer core network address.
  final pulumi.Input<String?>? coreNetworkAddress;
  final pulumi.Input<int?>? coreNetworkAsn;
  /// Connect peer address.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? peerAddress;
  /// Peer ASN. Supports 2-byte and 4-byte ASNs (1 to 4294967295).
  final pulumi.Input<String?>? peerAsn;

  /// Creates a new [ConnectPeerConfigurationBgpConfiguration].
  /// [coreNetworkAddress] Connect peer core network address.
  /// [coreNetworkAsn] Optional.
  /// [peerAddress] Connect peer address.
  /// [peerAsn] Peer ASN. Supports 2-byte and 4-byte ASNs (1 to 4294967295).
  const ConnectPeerConfigurationBgpConfiguration({
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
      coreNetworkAddress: (() { final guardedValue = map['coreNetworkAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreNetworkAsn: (() { final guardedValue = map['coreNetworkAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      peerAddress: (() { final guardedValue = map['peerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
