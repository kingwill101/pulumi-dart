// ignore_for_file: unused_element, unnecessary_cast

class ConnectPeerBgpOptions {
  /// Peer ASN. Supports 2-byte and 4-byte ASNs (1 to 4294967295).
  final String? peerAsn;

  ConnectPeerBgpOptions({
    this.peerAsn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final peerAsnValue = peerAsn;
    if (peerAsnValue != null) {
      map['peerAsn'] = peerAsnValue;
    }
    return map;
  }

  factory ConnectPeerBgpOptions.fromMap(Map<String, dynamic> map) {
    return ConnectPeerBgpOptions(
      peerAsn: map['peerAsn'] == null ? null : map['peerAsn'] as String,
    );
  }
}
