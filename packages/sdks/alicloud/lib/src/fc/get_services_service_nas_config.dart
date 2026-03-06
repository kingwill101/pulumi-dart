// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_services_service_nas_config_mount_point.dart';

class GetServicesServiceNasConfig {
  /// The group id of the NAS file system.
  final pulumi.Input<int> groupId;
  /// The mount points configuration, including following attributes:
  final pulumi.Input<List<GetServicesServiceNasConfigMountPoint>> mountPoints;
  /// The user id of the NAS file system.
  final pulumi.Input<int> userId;

  /// Creates a new [GetServicesServiceNasConfig].
  /// [groupId] The group id of the NAS file system.
  /// [mountPoints] The mount points configuration, including following attributes:
  /// [userId] The user id of the NAS file system.
  const GetServicesServiceNasConfig({
    required this.groupId,
    required this.mountPoints,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'mountPoints': pulumi.Input.mapInputValue<List<GetServicesServiceNasConfigMountPoint>, List<Map<String, dynamic>>>(mountPoints, (value) => pulumi.Input.encodeList<GetServicesServiceNasConfigMountPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userId': userId,
    };
  }

  factory GetServicesServiceNasConfig.fromMap(Map<String, dynamic> map) {
    return GetServicesServiceNasConfig(
      groupId: pulumi.Input.fromValue(map['groupId'] as int),
      mountPoints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServicesServiceNasConfigMountPoint>(map['mountPoints']!, (value) => GetServicesServiceNasConfigMountPoint.fromMap((value as Map).cast<String, dynamic>()))),
      userId: pulumi.Input.fromValue(map['userId'] as int),
    );
  }
}

