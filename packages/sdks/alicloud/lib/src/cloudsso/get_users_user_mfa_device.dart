// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUsersUserMfaDevice {
  /// The MFA Device ID.
  final pulumi.Input<String> deviceId;
  /// The MFA Device Name.
  final pulumi.Input<String> deviceName;
  /// The MFA Device Type.
  final pulumi.Input<String> deviceType;
  /// The Effective Time of MFA Device.
  final pulumi.Input<String> effectiveTime;

  /// Creates a new [GetUsersUserMfaDevice].
  /// [deviceId] The MFA Device ID.
  /// [deviceName] The MFA Device Name.
  /// [deviceType] The MFA Device Type.
  /// [effectiveTime] The Effective Time of MFA Device.
  const GetUsersUserMfaDevice({
    required this.deviceId,
    required this.deviceName,
    required this.deviceType,
    required this.effectiveTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceId': deviceId,
      'deviceName': deviceName,
      'deviceType': deviceType,
      'effectiveTime': effectiveTime,
    };
  }

  factory GetUsersUserMfaDevice.fromMap(Map<String, dynamic> map) {
    return GetUsersUserMfaDevice(
      deviceId: pulumi.Input.fromValue(map['deviceId'] as String),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      deviceType: pulumi.Input.fromValue(map['deviceType'] as String),
      effectiveTime: pulumi.Input.fromValue(map['effectiveTime'] as String),
    );
  }
}

