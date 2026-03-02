// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBgpGroupsGroup {
  /// The key used by the BGP group.
  final pulumi.Input<String> authKey;
  /// The name of the BGP group.
  final pulumi.Input<String> bgpGroupName;
  /// Description of the BGP group.
  final pulumi.Input<String> description;
  /// The hold time to wait for the incoming BGP message. If no message has been passed in after the hold time, the BGP neighbor is considered disconnected.
  final pulumi.Input<String> hold;
  /// The ID of the Bgp Group.
  final pulumi.Input<String> id;
  /// IP version.
  final pulumi.Input<String> ipVersion;
  /// Whether the AS number is false.
  final pulumi.Input<bool> isFakeAsn;
  /// The keepalive time.
  final pulumi.Input<String> keepalive;
  /// The local AS number.
  final pulumi.Input<int> localAsn;
  /// The autonomous system (AS) number of the BGP peer.
  final pulumi.Input<int> peerAsn;
  /// Routing limits.
  final pulumi.Input<String> routeLimit;
  /// The ID of the VBR.
  final pulumi.Input<String> routerId;
  /// The status of the resource.
  final pulumi.Input<String> status;

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
      authKey: (map['authKey'] as String).input(),
      bgpGroupName: (map['bgpGroupName'] as String).input(),
      description: (map['description'] as String).input(),
      hold: (map['hold'] as String).input(),
      id: (map['id'] as String).input(),
      ipVersion: (map['ipVersion'] as String).input(),
      isFakeAsn: (map['isFakeAsn'] as bool).input(),
      keepalive: (map['keepalive'] as String).input(),
      localAsn: (map['localAsn'] as int).input(),
      peerAsn: (map['peerAsn'] as int).input(),
      routeLimit: (map['routeLimit'] as String).input(),
      routerId: (map['routerId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

