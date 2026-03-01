// ignore_for_file: unused_element, unnecessary_cast


class GetUsersUserMfaDevice {
  /// The MFA Device ID.
  final String deviceId;
  /// The MFA Device Name.
  final String deviceName;
  /// The MFA Device Type.
  final String deviceType;
  /// The Effective Time of MFA Device.
  final String effectiveTime;

  /// Creates a new [GetUsersUserMfaDevice].
  /// [deviceId] The MFA Device ID.
  /// [deviceName] The MFA Device Name.
  /// [deviceType] The MFA Device Type.
  /// [effectiveTime] The Effective Time of MFA Device.
  GetUsersUserMfaDevice({
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
      deviceId: map['deviceId'] as String,
      deviceName: map['deviceName'] as String,
      deviceType: map['deviceType'] as String,
      effectiveTime: map['effectiveTime'] as String,
    );
  }
}

