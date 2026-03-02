// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBgpPeersPeer {
  /// The authentication key of the BGP group.
  final pulumi.Input<String> authKey;
  /// The BFD hop count.
  final pulumi.Input<int> bfdMultiHop;
  /// The ID of the BGP group.
  final pulumi.Input<String> bgpGroupId;
  /// The ID of the BGP neighbor.
  final pulumi.Input<String> bgpPeerId;
  /// The name of the BGP neighbor.
  final pulumi.Input<String> bgpPeerName;
  /// The status of the BGP connection.
  final pulumi.Input<String> bgpStatus;
  /// The description of the BGP group.
  final pulumi.Input<String> description;
  /// Indicates whether the Bidirectional Forwarding Detection (BFD) protocol is enabled.
  final pulumi.Input<bool> enableBfd;
  /// The hold time.
  final pulumi.Input<String> hold;
  /// The ID of the Bgp Peer.
  final pulumi.Input<String> id;
  /// The IP version.
  final pulumi.Input<String> ipVersion;
  /// Indicates whether a fake AS number is used.
  final pulumi.Input<bool> isFake;
  /// The keepalive time.
  final pulumi.Input<String> keepalive;
  /// The AS number of the device on the Alibaba Cloud side.
  final pulumi.Input<String> localAsn;
  /// The autonomous system (AS) number of the BGP peer.
  final pulumi.Input<String> peerAsn;
  /// The IP address of the BGP neighbor.
  final pulumi.Input<String> peerIpAddress;
  /// The limit on routes.
  final pulumi.Input<String> routeLimit;
  /// The ID of the router.
  final pulumi.Input<String> routerId;
  /// The status of the BGP peer.
  final pulumi.Input<String> status;

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
      authKey: (map['authKey'] as String).input(),
      bfdMultiHop: (map['bfdMultiHop'] as int).input(),
      bgpGroupId: (map['bgpGroupId'] as String).input(),
      bgpPeerId: (map['bgpPeerId'] as String).input(),
      bgpPeerName: (map['bgpPeerName'] as String).input(),
      bgpStatus: (map['bgpStatus'] as String).input(),
      description: (map['description'] as String).input(),
      enableBfd: (map['enableBfd'] as bool).input(),
      hold: (map['hold'] as String).input(),
      id: (map['id'] as String).input(),
      ipVersion: (map['ipVersion'] as String).input(),
      isFake: (map['isFake'] as bool).input(),
      keepalive: (map['keepalive'] as String).input(),
      localAsn: (map['localAsn'] as String).input(),
      peerAsn: (map['peerAsn'] as String).input(),
      peerIpAddress: (map['peerIpAddress'] as String).input(),
      routeLimit: (map['routeLimit'] as String).input(),
      routerId: (map['routerId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

