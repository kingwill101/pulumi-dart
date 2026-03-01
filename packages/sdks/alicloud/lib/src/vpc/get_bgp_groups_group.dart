// ignore_for_file: unused_element, unnecessary_cast


class GetBgpGroupsGroup {
  /// The key used by the BGP group.
  final String authKey;
  /// The name of the BGP group.
  final String bgpGroupName;
  /// Description of the BGP group.
  final String description;
  /// The hold time to wait for the incoming BGP message. If no message has been passed in after the hold time, the BGP neighbor is considered disconnected.
  final String hold;
  /// The ID of the Bgp Group.
  final String id;
  /// IP version.
  final String ipVersion;
  /// Whether the AS number is false.
  final bool isFakeAsn;
  /// The keepalive time.
  final String keepalive;
  /// The local AS number.
  final int localAsn;
  /// The autonomous system (AS) number of the BGP peer.
  final int peerAsn;
  /// Routing limits.
  final String routeLimit;
  /// The ID of the VBR.
  final String routerId;
  /// The status of the resource.
  final String status;

  /// Creates a new [GetBgpGroupsGroup].
  /// [authKey] The key used by the BGP group.
  /// [bgpGroupName] The name of the BGP group.
  /// [description] Description of the BGP group.
  /// [hold] The hold time to wait for the incoming BGP message. If no message has been passed in after the hold time, the BGP neighbor is considered disconnected.
  /// [id] The ID of the Bgp Group.
  /// [ipVersion] IP version.
  /// [isFakeAsn] Whether the AS number is false.
  /// [keepalive] The keepalive time.
  /// [localAsn] The local AS number.
  /// [peerAsn] The autonomous system (AS) number of the BGP peer.
  /// [routeLimit] Routing limits.
  /// [routerId] The ID of the VBR.
  /// [status] The status of the resource.
  GetBgpGroupsGroup({
    required this.authKey,
    required this.bgpGroupName,
    required this.description,
    required this.hold,
    required this.id,
    required this.ipVersion,
    required this.isFakeAsn,
    required this.keepalive,
    required this.localAsn,
    required this.peerAsn,
    required this.routeLimit,
    required this.routerId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authKey': authKey,
      'bgpGroupName': bgpGroupName,
      'description': description,
      'hold': hold,
      'id': id,
      'ipVersion': ipVersion,
      'isFakeAsn': isFakeAsn,
      'keepalive': keepalive,
      'localAsn': localAsn,
      'peerAsn': peerAsn,
      'routeLimit': routeLimit,
      'routerId': routerId,
      'status': status,
    };
  }

  factory GetBgpGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetBgpGroupsGroup(
      authKey: map['authKey'] as String,
      bgpGroupName: map['bgpGroupName'] as String,
      description: map['description'] as String,
      hold: map['hold'] as String,
      id: map['id'] as String,
      ipVersion: map['ipVersion'] as String,
      isFakeAsn: map['isFakeAsn'] as bool,
      keepalive: map['keepalive'] as String,
      localAsn: map['localAsn'] as int,
      peerAsn: map['peerAsn'] as int,
      routeLimit: map['routeLimit'] as String,
      routerId: map['routerId'] as String,
      status: map['status'] as String,
    );
  }
}

