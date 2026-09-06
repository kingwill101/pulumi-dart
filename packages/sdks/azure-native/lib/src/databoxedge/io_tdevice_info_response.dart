// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_response.dart';

/// Metadata of IoT device/IoT Edge device to be configured.
class IoTDeviceInfoResponse {
  /// Encrypted IoT device/IoT edge device connection string.
  final pulumi.Input<AuthenticationResponse?>? authentication;
  /// ID of the IoT device/edge device.
  final pulumi.Input<String> deviceId;
  /// Host name for the IoT hub associated to the device.
  final pulumi.Input<String> ioTHostHub;
  /// Id for the IoT hub associated to the device.
  final pulumi.Input<String?>? ioTHostHubId;

  /// Creates a new [IoTDeviceInfoResponse].
  /// [authentication] Encrypted IoT device/IoT edge device connection string.
  /// [deviceId] ID of the IoT device/edge device.
  /// [ioTHostHub] Host name for the IoT hub associated to the device.
  /// [ioTHostHubId] Id for the IoT hub associated to the device.
  const IoTDeviceInfoResponse({
    this.authentication,
    required this.deviceId,
    required this.ioTHostHub,
    this.ioTHostHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<AuthenticationResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'deviceId': deviceId,
      'ioTHostHub': ioTHostHub,
      'ioTHostHubId': ?ioTHostHubId,
    };
  }

  factory IoTDeviceInfoResponse.fromMap(Map<String, dynamic> map) {
    return IoTDeviceInfoResponse(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deviceId: pulumi.Input.fromValue(map['deviceId'] as String),
      ioTHostHub: pulumi.Input.fromValue(map['ioTHostHub'] as String),
      ioTHostHubId: (() { final guardedValue = map['ioTHostHubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
