// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_function_oss_mount_config_mount_point.dart';

class V3FunctionOssMountConfig {
  /// OSS mount point list See `mount_points` below.
  final pulumi.Input<List<V3FunctionOssMountConfigMountPoint>>? mountPoints;

  /// Creates a new [V3FunctionOssMountConfig].
  /// [mountPoints] OSS mount point list See `mount_points` below.
  V3FunctionOssMountConfig({
    this.mountPoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPoints': ?pulumi.Input.mapOptionalInputValue<List<V3FunctionOssMountConfigMountPoint>, List<Map<String, dynamic>>>(mountPoints, (value) => pulumi.Input.encodeList<V3FunctionOssMountConfigMountPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V3FunctionOssMountConfig.fromMap(Map<String, dynamic> map) {
    return V3FunctionOssMountConfig(
      mountPoints: map['mountPoints'] == null ? null : (pulumi.Input.decodeList<V3FunctionOssMountConfigMountPoint>(map['mountPoints']!, (value) => V3FunctionOssMountConfigMountPoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

