// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_nas_config_mount_point.dart';

class ServiceNasConfig {
  /// The group id of your NAS file system.
  final int groupId;
  /// Config the NAS mount points.See `mount_points` below.
  final List<ServiceNasConfigMountPoint> mountPoints;
  /// The user id of your NAS file system.
  final int userId;

  /// Creates a new [ServiceNasConfig].
  /// [groupId] The group id of your NAS file system.
  /// [mountPoints] Config the NAS mount points.See `mount_points` below.
  /// [userId] The user id of your NAS file system.
  ServiceNasConfig({
    required this.groupId,
    required this.mountPoints,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'mountPoints': pulumi.Input.encodeList<ServiceNasConfigMountPoint, Map<String, dynamic>>(mountPoints, (value) => value.toMap()),
      'userId': userId,
    };
  }

  factory ServiceNasConfig.fromMap(Map<String, dynamic> map) {
    return ServiceNasConfig(
      groupId: map['groupId'] as int,
      mountPoints: pulumi.Input.decodeList<ServiceNasConfigMountPoint>(map['mountPoints'], (value) => ServiceNasConfigMountPoint.fromMap((value as Map).cast<String, dynamic>())),
      userId: map['userId'] as int,
    );
  }
}

