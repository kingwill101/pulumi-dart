// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_system_groups_group_stat.dart';

class GetSystemGroupsGroup {
  /// The App Name of Group.
  final pulumi.Input<String> app;
  /// The space within the device status update of the callback, need to start with http:// or https:// at the beginning.
  final pulumi.Input<String> callback;
  /// The creation time of the Group.
  final pulumi.Input<String> createTime;
  /// The description of the Group.
  final pulumi.Input<String> description;
  /// Whether to open Group.
  final pulumi.Input<bool> enabled;
  /// Space of national standard ID. **NOTE:** Available only in the national standard access space.
  final pulumi.Input<String> gbId;
  /// Space of national standard signaling server address. **NOTE:** Available only in the national standard access space.
  final pulumi.Input<String> gbIp;
  /// The ID of Group.
  final pulumi.Input<String> groupId;
  /// The name of Group.
  final pulumi.Input<String> groupName;
  /// The ID of the Group.
  final pulumi.Input<String> id;
  /// The use of the access protocol support `gb28181`,`rtmp`(Real Time Messaging Protocol).
  final pulumi.Input<String> inProtocol;
  /// The use of space play Protocol multi-valued separate them with commas (,). Valid values: `flv`,`hls`, `rtmp`(Real Time Messaging Protocol).
  final pulumi.Input<String> outProtocol;
  /// The domain name of plan streaming used by the group.
  final pulumi.Input<String> playDomain;
  /// The domain name of push streaming used by the group.
  final pulumi.Input<String> pushDomain;
  /// The Device statistics of Group.
  final pulumi.Input<List<GetSystemGroupsGroupStat>> stats;

  /// Creates a new [GetSystemGroupsGroup].
  /// [app] The App Name of Group.
  /// [callback] The space within the device status update of the callback, need to start with http:// or https:// at the beginning.
  /// [createTime] The creation time of the Group.
  /// [description] The description of the Group.
  /// [enabled] Whether to open Group.
  /// [gbId] Space of national standard ID. **NOTE:** Available only in the national standard access space.
  /// [gbIp] Space of national standard signaling server address. **NOTE:** Available only in the national standard access space.
  /// [groupId] The ID of Group.
  /// [groupName] The name of Group.
  /// [id] The ID of the Group.
  /// [inProtocol] The use of the access protocol support `gb28181`,`rtmp`(Real Time Messaging Protocol).
  /// [outProtocol] The use of space play Protocol multi-valued separate them with commas (,). Valid values: `flv`,`hls`, `rtmp`(Real Time Messaging Protocol).
  /// [playDomain] The domain name of plan streaming used by the group.
  /// [pushDomain] The domain name of push streaming used by the group.
  /// [stats] The Device statistics of Group.
  GetSystemGroupsGroup({
    required this.app,
    required this.callback,
    required this.createTime,
    required this.description,
    required this.enabled,
    required this.gbId,
    required this.gbIp,
    required this.groupId,
    required this.groupName,
    required this.id,
    required this.inProtocol,
    required this.outProtocol,
    required this.playDomain,
    required this.pushDomain,
    required this.stats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': app,
      'callback': callback,
      'createTime': createTime,
      'description': description,
      'enabled': enabled,
      'gbId': gbId,
      'gbIp': gbIp,
      'groupId': groupId,
      'groupName': groupName,
      'id': id,
      'inProtocol': inProtocol,
      'outProtocol': outProtocol,
      'playDomain': playDomain,
      'pushDomain': pushDomain,
      'stats': pulumi.Input.mapInputValue<List<GetSystemGroupsGroupStat>, List<Map<String, dynamic>>>(stats, (value) => pulumi.Input.encodeList<GetSystemGroupsGroupStat, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSystemGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetSystemGroupsGroup(
      app: (map['app'] as String).input(),
      callback: (map['callback'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      gbId: (map['gbId'] as String).input(),
      gbIp: (map['gbIp'] as String).input(),
      groupId: (map['groupId'] as String).input(),
      groupName: (map['groupName'] as String).input(),
      id: (map['id'] as String).input(),
      inProtocol: (map['inProtocol'] as String).input(),
      outProtocol: (map['outProtocol'] as String).input(),
      playDomain: (map['playDomain'] as String).input(),
      pushDomain: (map['pushDomain'] as String).input(),
      stats: (pulumi.Input.decodeList<GetSystemGroupsGroupStat>(map['stats'], (value) => GetSystemGroupsGroupStat.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

