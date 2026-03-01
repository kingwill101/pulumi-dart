// ignore_for_file: unused_element, unnecessary_cast

import 'authentication.dart';

/// Metadata of IoT device/IoT Edge device to be configured.
class IoTDeviceInfo {
  /// Encrypted IoT device/IoT edge device connection string.
  final Authentication? authentication;
  /// ID of the IoT device/edge device.
  final String deviceId;
  /// Host name for the IoT hub associated to the device.
  final String ioTHostHub;
  /// Id for the IoT hub associated to the device.
  final String? ioTHostHubId;

  /// Creates a new [IoTDeviceInfo].
  /// [authentication] Encrypted IoT device/IoT edge device connection string.
  /// [deviceId] ID of the IoT device/edge device.
  /// [ioTHostHub] Host name for the IoT hub associated to the device.
  /// [ioTHostHubId] Id for the IoT hub associated to the device.
  IoTDeviceInfo({
    this.authentication,
    required this.deviceId,
    required this.ioTHostHub,
    this.ioTHostHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'deviceId': deviceId,
      'ioTHostHub': ioTHostHub,
      'ioTHostHubId': ?ioTHostHubId,
    };
  }

  factory IoTDeviceInfo.fromMap(Map<String, dynamic> map) {
    return IoTDeviceInfo(
      authentication: map['authentication'] == null ? null : Authentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      deviceId: map['deviceId'] as String,
      ioTHostHub: map['ioTHostHub'] as String,
      ioTHostHubId: map['ioTHostHubId'] == null ? null : map['ioTHostHubId'] as String,
    );
  }
}

