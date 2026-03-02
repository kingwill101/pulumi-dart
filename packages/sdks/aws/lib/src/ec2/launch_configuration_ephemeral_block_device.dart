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
      deviceName: (map['deviceName'] as String).input(),
      noDevice: map['noDevice'] == null ? null : (map['noDevice'] as bool).input(),
      virtualName: map['virtualName'] == null ? null : (map['virtualName'] as String).input(),
    );
  }
}

