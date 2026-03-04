// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_nas_config_mount_point.dart';

class ServiceNasConfig {
  /// The group id of your NAS file system.
  final pulumi.Input<int> groupId;

  /// Config the NAS mount points.See `mount_points` below.
  final pulumi.Input<List<ServiceNasConfigMountPoint>> mountPoints;

  /// The user id of your NAS file system.
  final pulumi.Input<int> userId;

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
      'mountPoints':
          pulumi.Input.mapInputValue<
            List<ServiceNasConfigMountPoint>,
            List<Map<String, dynamic>>
          >(
            mountPoints,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceNasConfigMountPoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'userId': userId,
    };
  }

  factory ServiceNasConfig.fromMap(Map<String, dynamic> map) {
    return ServiceNasConfig(
      groupId: pulumi.Input.fromValue(map['groupId'] as int),
      mountPoints: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ServiceNasConfigMountPoint>(
          map['mountPoints']!,
          (value) => ServiceNasConfigMountPoint.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      userId: pulumi.Input.fromValue(map['userId'] as int),
    );
  }
}
