// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceZoneInfo {
  /// The ID of the node.
  final pulumi.Input<String>? insName;
  /// The type of the node.
  final pulumi.Input<String>? nodeType;
  /// The id of the role.
  final pulumi.Input<String>? roleId;
  /// The role of the node.
  final pulumi.Input<String>? roleType;
  /// The Zone to launch the DB instance. it supports multiple zone.
  /// If it is a multi-zone and `vswitch_id` is specified, the vswitch must in one of them.
  /// The multiple zone ID can be retrieved by setting `multi` to "true" in the data source `alicloud.getZones`.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceZoneInfo].
  /// [insName] The ID of the node.
  /// [nodeType] The type of the node.
  /// [roleId] The id of the role.
  /// [roleType] The role of the node.
  /// [zoneId] The Zone to launch the DB instance. it supports multiple zone.
  InstanceZoneInfo({
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

  factory InstanceZoneInfo.fromMap(Map<String, dynamic> map) {
    return InstanceZoneInfo(
      insName: (() { final guardedValue = map['insName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleType: (() { final guardedValue = map['roleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

