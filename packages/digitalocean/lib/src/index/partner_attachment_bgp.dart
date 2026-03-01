// ignore_for_file: unused_element, unnecessary_cast


class PartnerAttachmentBgp {
  final String? authKey;
  final String? localRouterIp;
  final int? peerRouterAsn;
  final String? peerRouterIp;

  /// Creates a new [PartnerAttachmentBgp].
  /// [authKey] Optional.
  /// [localRouterIp] Optional.
  /// [peerRouterAsn] Optional.
  /// [peerRouterIp] Optional.
  PartnerAttachmentBgp({
    this.authKey,
    this.localRouterIp,
    this.peerRouterAsn,
    this.peerRouterIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authKey': ?authKey,
      'localRouterIp': ?localRouterIp,
      'peerRouterAsn': ?peerRouterAsn,
      'peerRouterIp': ?peerRouterIp,
    };
  }

  factory PartnerAttachmentBgp.fromMap(Map<String, dynamic> map) {
    return PartnerAttachmentBgp(
      authKey: map['authKey'] == null ? null : map['authKey'] as String,
      localRouterIp: map['localRouterIp'] == null ? null : map['localRouterIp'] as String,
      peerRouterAsn: map['peerRouterAsn'] == null ? null : map['peerRouterAsn'] as int,
      peerRouterIp: map['peerRouterIp'] == null ? null : map['peerRouterIp'] as String,
    );
  }
}

