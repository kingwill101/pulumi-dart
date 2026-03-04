// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v3_functions_function_nas_config_mount_point.dart';

class GetV3FunctionsFunctionNasConfig {
  /// Group ID.
  final pulumi.Input<int> groupId;

  /// OSS mount point list.
  final pulumi.Input<List<GetV3FunctionsFunctionNasConfigMountPoint>>
  mountPoints;

  /// Account ID.
  final pulumi.Input<int> userId;

  /// Creates a new [GetV3FunctionsFunctionNasConfig].
  /// [groupId] Group ID.
  /// [mountPoints] OSS mount point list.
  /// [userId] Account ID.
  GetV3FunctionsFunctionNasConfig({
    required this.groupId,
    required this.mountPoints,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'mountPoints':
          pulumi.Input.mapInputValue<
            List<GetV3FunctionsFunctionNasConfigMountPoint>,
            List<Map<String, dynamic>>
          >(
            mountPoints,
            (value) =>
                pulumi.Input.encodeList<
                  GetV3FunctionsFunctionNasConfigMountPoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'userId': userId,
    };
  }

  factory GetV3FunctionsFunctionNasConfig.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionNasConfig(
      groupId: pulumi.Input.fromValue(map['groupId'] as int),
      mountPoints: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetV3FunctionsFunctionNasConfigMountPoint>(
          map['mountPoints']!,
          (value) => GetV3FunctionsFunctionNasConfigMountPoint.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      userId: pulumi.Input.fromValue(map['userId'] as int),
    );
  }
}
