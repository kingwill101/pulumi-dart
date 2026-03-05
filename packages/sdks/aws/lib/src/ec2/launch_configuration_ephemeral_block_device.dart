// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchConfigurationEphemeralBlockDevice {
  final pulumi.Input<String> deviceName;
  final pulumi.Input<bool>? noDevice;
  final pulumi.Input<String>? virtualName;

  /// Creates a new [LaunchConfigurationEphemeralBlockDevice].
  /// [deviceName] Required.
  /// [noDevice] Optional.
  /// [virtualName] Optional.
  LaunchConfigurationEphemeralBlockDevice({
    required this.deviceName,
    this.noDevice,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'noDevice': ?noDevice,
      'virtualName': ?virtualName,
    };
  }

  factory LaunchConfigurationEphemeralBlockDevice.fromMap(Map<String, dynamic> map) {
    return LaunchConfigurationEphemeralBlockDevice(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      noDevice: (() { final guardedValue = map['noDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualName: (() { final guardedValue = map['virtualName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

