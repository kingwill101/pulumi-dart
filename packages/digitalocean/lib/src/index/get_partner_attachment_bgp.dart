// ignore_for_file: unused_element, unnecessary_cast


class GetPartnerAttachmentBgp {
  final String? localRouterIp;
  final int? peerRouterAsn;
  final String? peerRouterIp;

  /// Creates a new [GetPartnerAttachmentBgp].
  /// [localRouterIp] Optional.
  /// [peerRouterAsn] Optional.
  /// [peerRouterIp] Optional.
  GetPartnerAttachmentBgp({
    this.localRouterIp,
    this.peerRouterAsn,
    this.peerRouterIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRouterIp': ?localRouterIp,
      'peerRouterAsn': ?peerRouterAsn,
      'peerRouterIp': ?peerRouterIp,
    };
  }

  factory GetPartnerAttachmentBgp.fromMap(Map<String, dynamic> map) {
    return GetPartnerAttachmentBgp(
      localRouterIp: map['localRouterIp'] == null ? null : map['localRouterIp'] as String,
      peerRouterAsn: map['peerRouterAsn'] == null ? null : map['peerRouterAsn'] as int,
      peerRouterIp: map['peerRouterIp'] == null ? null : map['peerRouterIp'] as String,
    );
  }
}

