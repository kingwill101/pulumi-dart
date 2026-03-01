// ignore_for_file: unused_element, unnecessary_cast

import 'authentication_response.dart';

/// Metadata of IoT device/IoT Edge device to be configured.
class IoTDeviceInfoResponse {
  /// Encrypted IoT device/IoT edge device connection string.
  final AuthenticationResponse? authentication;
  /// ID of the IoT device/edge device.
  final String deviceId;
  /// Host name for the IoT hub associated to the device.
  final String ioTHostHub;
  /// Id for the IoT hub associated to the device.
  final String? ioTHostHubId;

  /// Creates a new [IoTDeviceInfoResponse].
  /// [authentication] Encrypted IoT device/IoT edge device connection string.
  /// [deviceId] ID of the IoT device/edge device.
  /// [ioTHostHub] Host name for the IoT hub associated to the device.
  /// [ioTHostHubId] Id for the IoT hub associated to the device.
  IoTDeviceInfoResponse({
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

  factory IoTDeviceInfoResponse.fromMap(Map<String, dynamic> map) {
    return IoTDeviceInfoResponse(
      authentication: map['authentication'] == null ? null : AuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      deviceId: map['deviceId'] as String,
      ioTHostHub: map['ioTHostHub'] as String,
      ioTHostHubId: map['ioTHostHubId'] == null ? null : map['ioTHostHubId'] as String,
    );
  }
}

