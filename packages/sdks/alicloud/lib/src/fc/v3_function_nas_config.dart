// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_function_nas_config_mount_point.dart';

class V3FunctionNasConfig {
  /// Group ID
  final pulumi.Input<int>? groupId;
  /// Mount point list See `mount_points` below.
  final pulumi.Input<List<V3FunctionNasConfigMountPoint>>? mountPoints;
  /// Account ID
  final pulumi.Input<int>? userId;

  /// Creates a new [V3FunctionNasConfig].
  /// [groupId] Group ID
  /// [mountPoints] Mount point list See `mount_points` below.
  /// [userId] Account ID
  V3FunctionNasConfig({
    this.groupId,
    this.mountPoints,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'mountPoints': ?pulumi.Input.mapOptionalInputValue<List<V3FunctionNasConfigMountPoint>, List<Map<String, dynamic>>>(mountPoints, (value) => pulumi.Input.encodeList<V3FunctionNasConfigMountPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userId': ?userId,
    };
  }

  factory V3FunctionNasConfig.fromMap(Map<String, dynamic> map) {
    return V3FunctionNasConfig(
      groupId: map['groupId'] == null ? null : (map['groupId'] as int).input(),
      mountPoints: map['mountPoints'] == null ? null : (pulumi.Input.decodeList<V3FunctionNasConfigMountPoint>(map['mountPoints'], (value) => V3FunctionNasConfigMountPoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userId: map['userId'] == null ? null : (map['userId'] as int).input(),
    );
  }
}

