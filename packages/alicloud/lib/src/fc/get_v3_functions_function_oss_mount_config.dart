// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v3_functions_function_oss_mount_config_mount_point.dart';

class GetV3FunctionsFunctionOssMountConfig {
  /// OSS mount point list.
  final List<GetV3FunctionsFunctionOssMountConfigMountPoint> mountPoints;

  /// Creates a new [GetV3FunctionsFunctionOssMountConfig].
  /// [mountPoints] OSS mount point list.
  GetV3FunctionsFunctionOssMountConfig({
    required this.mountPoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPoints': pulumi.Input.encodeList<GetV3FunctionsFunctionOssMountConfigMountPoint, Map<String, dynamic>>(mountPoints, (value) => value.toMap()),
    };
  }

  factory GetV3FunctionsFunctionOssMountConfig.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionOssMountConfig(
      mountPoints: pulumi.Input.decodeList<GetV3FunctionsFunctionOssMountConfigMountPoint>(map['mountPoints'], (value) => GetV3FunctionsFunctionOssMountConfigMountPoint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

