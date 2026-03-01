// ignore_for_file: unused_element, unnecessary_cast


class GetBgpPeersPeer {
  /// The authentication key of the BGP group.
  final String authKey;
  /// The BFD hop count.
  final int bfdMultiHop;
  /// The ID of the BGP group.
  final String bgpGroupId;
  /// The ID of the BGP neighbor.
  final String bgpPeerId;
  /// The name of the BGP neighbor.
  final String bgpPeerName;
  /// The status of the BGP connection.
  final String bgpStatus;
  /// The description of the BGP group.
  final String description;
  /// Indicates whether the Bidirectional Forwarding Detection (BFD) protocol is enabled.
  final bool enableBfd;
  /// The hold time.
  final String hold;
  /// The ID of the Bgp Peer.
  final String id;
  /// The IP version.
  final String ipVersion;
  /// Indicates whether a fake AS number is used.
  final bool isFake;
  /// The keepalive time.
  final String keepalive;
  /// The AS number of the device on the Alibaba Cloud side.
  final String localAsn;
  /// The autonomous system (AS) number of the BGP peer.
  final String peerAsn;
  /// The IP address of the BGP neighbor.
  final String peerIpAddress;
  /// The limit on routes.
  final String routeLimit;
  /// The ID of the router.
  final String routerId;
  /// The status of the BGP peer.
  final String status;

  /// Creates a new [GetBgpPeersPeer].
  /// [authKey] The authentication key of the BGP group.
  /// [bfdMultiHop] The BFD hop count.
  /// [bgpGroupId] The ID of the BGP group.
  /// [bgpPeerId] The ID of the BGP neighbor.
  /// [bgpPeerName] The name of the BGP neighbor.
  /// [bgpStatus] The status of the BGP connection.
  /// [description] The description of the BGP group.
  /// [enableBfd] Indicates whether the Bidirectional Forwarding Detection (BFD) protocol is enabled.
  /// [hold] The hold time.
  /// [id] The ID of the Bgp Peer.
  /// [ipVersion] The IP version.
  /// [isFake] Indicates whether a fake AS number is used.
  /// [keepalive] The keepalive time.
  /// [localAsn] The AS number of the device on the Alibaba Cloud side.
  /// [peerAsn] The autonomous system (AS) number of the BGP peer.
  /// [peerIpAddress] The IP address of the BGP neighbor.
  /// [routeLimit] The limit on routes.
  /// [routerId] The ID of the router.
  /// [status] The status of the BGP peer.
  GetBgpPeersPeer({
    required this.authKey,
    required this.bfdMultiHop,
    required this.bgpGroupId,
    required this.bgpPeerId,
    required this.bgpPeerName,
    required this.bgpStatus,
    required this.description,
    required this.enableBfd,
    required this.hold,
    required this.id,
    required this.ipVersion,
    required this.isFake,
    required this.keepalive,
    required this.localAsn,
    required this.peerAsn,
    required this.peerIpAddress,
    required this.routeLimit,
    required this.routerId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authKey': authKey,
      'bfdMultiHop': bfdMultiHop,
      'bgpGroupId': bgpGroupId,
      'bgpPeerId': bgpPeerId,
      'bgpPeerName': bgpPeerName,
      'bgpStatus': bgpStatus,
      'description': description,
      'enableBfd': enableBfd,
      'hold': hold,
      'id': id,
      'ipVersion': ipVersion,
      'isFake': isFake,
      'keepalive': keepalive,
      'localAsn': localAsn,
      'peerAsn': peerAsn,
      'peerIpAddress': peerIpAddress,
      'routeLimit': routeLimit,
      'routerId': routerId,
      'status': status,
    };
  }

  factory GetBgpPeersPeer.fromMap(Map<String, dynamic> map) {
    return GetBgpPeersPeer(
      authKey: map['authKey'] as String,
      bfdMultiHop: map['bfdMultiHop'] as int,
      bgpGroupId: map['bgpGroupId'] as String,
      bgpPeerId: map['bgpPeerId'] as String,
      bgpPeerName: map['bgpPeerName'] as String,
      bgpStatus: map['bgpStatus'] as String,
      description: map['description'] as String,
      enableBfd: map['enableBfd'] as bool,
      hold: map['hold'] as String,
      id: map['id'] as String,
      ipVersion: map['ipVersion'] as String,
      isFake: map['isFake'] as bool,
      keepalive: map['keepalive'] as String,
      localAsn: map['localAsn'] as String,
      peerAsn: map['peerAsn'] as String,
      peerIpAddress: map['peerIpAddress'] as String,
      routeLimit: map['routeLimit'] as String,
      routerId: map['routerId'] as String,
      status: map['status'] as String,
    );
  }
}

