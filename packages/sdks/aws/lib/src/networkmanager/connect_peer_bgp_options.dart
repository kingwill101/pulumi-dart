// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectPeerBgpOptions {
  /// Peer ASN. Supports 2-byte and 4-byte ASNs (1 to 4294967295).
  final pulumi.Input<String>? peerAsn;

  /// Creates a new [ConnectPeerBgpOptions].
  /// [peerAsn] Peer ASN. Supports 2-byte and 4-byte ASNs (1 to 4294967295).
  const ConnectPeerBgpOptions({
    this.peerAsn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerAsn': ?peerAsn,
    };
  }

  factory ConnectPeerBgpOptions.fromMap(Map<String, dynamic> map) {
    return ConnectPeerBgpOptions(
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
