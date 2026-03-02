// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShardingInstanceZoneInfo {
  /// The ID of the node.
  final pulumi.Input<String>? insName;
  /// The type of the node.
  final pulumi.Input<String>? nodeType;
  /// The role ID.
  final pulumi.Input<String>? roleId;
  /// The role of the node.
  final pulumi.Input<String>? roleType;
  /// The Zone to launch the DB instance. MongoDB Sharding Instance does not support multiple-zone.
  /// If it is a multi-zone and `vswitch_id` is specified, the vswitch must in one of them.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ShardingInstanceZoneInfo].
  /// [insName] The ID of the node.
  /// [nodeType] The type of the node.
  /// [roleId] The role ID.
  /// [roleType] The role of the node.
  /// [zoneId] The Zone to launch the DB instance. MongoDB Sharding Instance does not support multiple-zone.
  ShardingInstanceZoneInfo({
    this.insName,
    this.nodeType,
    this.roleId,
    this.roleType,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insName': ?insName,
      'nodeType': ?nodeType,
      'roleId': ?roleId,
      'roleType': ?roleType,
      'zoneId': ?zoneId,
    };
  }

  factory ShardingInstanceZoneInfo.fromMap(Map<String, dynamic> map) {
    return ShardingInstanceZoneInfo(
      insName: map['insName'] == null ? null : (map['insName'] as String).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType'] as String).input(),
      roleId: map['roleId'] == null ? null : (map['roleId'] as String).input(),
      roleType: map['roleType'] == null ? null : (map['roleType'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

