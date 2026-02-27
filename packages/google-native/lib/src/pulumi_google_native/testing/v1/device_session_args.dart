// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'android_device.dart';

/// The set of arguments for DeviceSession.
class DeviceSessionArgs {
  /// The requested device
  final Input<AndroidDevice> androidDevice;

  /// Optional. If the device is still in use at this time, any connections will be ended and the SessionState will transition from ACTIVE to FINISHED.
  final Input<String>? expireTime;

  /// Optional. Name of the DeviceSession, e.g. "projects/{project_id}/deviceSessions/{session_id}"
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. The amount of time that a device will be initially allocated for. This can eventually be extended with the UpdateDeviceSession RPC. Default: 30 minutes.
  final Input<String>? ttl;

  DeviceSessionArgs({
    required this.androidDevice,
    this.expireTime,
    this.name,
    this.project,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['androidDevice'] =
        Input.mapInputValue<AndroidDevice, Map<String, dynamic>>(
            androidDevice, (value) => value.toMap());
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    return map;
  }

  factory DeviceSessionArgs.fromMap(Map<String, dynamic> map) {
    return DeviceSessionArgs(
      androidDevice: Input.asInput<AndroidDevice>(map['androidDevice']),
      expireTime: Input.asOptionalInput<String>(map['expireTime']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      ttl: Input.asOptionalInput<String>(map['ttl']),
    );
  }
}
