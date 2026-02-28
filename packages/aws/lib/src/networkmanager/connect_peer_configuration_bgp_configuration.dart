// ignore_for_file: unused_element, unnecessary_cast

class ConnectPeerConfigurationBgpConfiguration {
  /// Connect peer core network address.
  final String? coreNetworkAddress;
  final int? coreNetworkAsn;

  /// Connect peer address.
  ///
  /// The following arguments are optional:
  final String? peerAddress;

  /// Peer ASN. Supports 2-byte and 4-byte ASNs (1 to 4294967295).
  final String? peerAsn;

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
    final map = <String, dynamic>{};
    final coreNetworkAddressValue = coreNetworkAddress;
    if (coreNetworkAddressValue != null) {
      map['coreNetworkAddress'] = coreNetworkAddressValue;
    }
    final coreNetworkAsnValue = coreNetworkAsn;
    if (coreNetworkAsnValue != null) {
      map['coreNetworkAsn'] = coreNetworkAsnValue;
    }
    final peerAddressValue = peerAddress;
    if (peerAddressValue != null) {
      map['peerAddress'] = peerAddressValue;
    }
    final peerAsnValue = peerAsn;
    if (peerAsnValue != null) {
      map['peerAsn'] = peerAsnValue;
    }
    return map;
  }

  factory ConnectPeerConfigurationBgpConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ConnectPeerConfigurationBgpConfiguration(
      coreNetworkAddress: map['coreNetworkAddress'] == null
          ? null
          : map['coreNetworkAddress'] as String,
      coreNetworkAsn:
          map['coreNetworkAsn'] == null ? null : map['coreNetworkAsn'] as int,
      peerAddress:
          map['peerAddress'] == null ? null : map['peerAddress'] as String,
      peerAsn: map['peerAsn'] == null ? null : map['peerAsn'] as String,
    );
  }
}
