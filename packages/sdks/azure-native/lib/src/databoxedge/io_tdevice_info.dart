// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication.dart';

/// Metadata of IoT device/IoT Edge device to be configured.
class IoTDeviceInfo {
  /// Encrypted IoT device/IoT edge device connection string.
  final pulumi.Input<Authentication?>? authentication;
  /// ID of the IoT device/edge device.
  final pulumi.Input<String> deviceId;
  /// Host name for the IoT hub associated to the device.
  final pulumi.Input<String> ioTHostHub;
  /// Id for the IoT hub associated to the device.
  final pulumi.Input<String?>? ioTHostHubId;

  /// Creates a new [IoTDeviceInfo].
  /// [authentication] Encrypted IoT device/IoT edge device connection string.
  /// [deviceId] ID of the IoT device/edge device.
  /// [ioTHostHub] Host name for the IoT hub associated to the device.
  /// [ioTHostHubId] Id for the IoT hub associated to the device.
  const IoTDeviceInfo({
    this.authentication,
    required this.deviceId,
    required this.ioTHostHub,
    this.ioTHostHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<Authentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'deviceId': deviceId,
      'ioTHostHub': ioTHostHub,
      'ioTHostHubId': ?ioTHostHubId,
    };
  }

  factory IoTDeviceInfo.fromMap(Map<String, dynamic> map) {
    return IoTDeviceInfo(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Authentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deviceId: pulumi.Input.fromValue(map['deviceId'] as String),
      ioTHostHub: pulumi.Input.fromValue(map['ioTHostHub'] as String),
      ioTHostHubId: (() { final guardedValue = map['ioTHostHubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
