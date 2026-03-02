// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchConfigurationEphemeralBlockDevice {
  /// Name of the device.
  final pulumi.Input<String> deviceName;
  /// Virtual Name of the device.
  final pulumi.Input<String> virtualName;

  /// Creates a new [GetLaunchConfigurationEphemeralBlockDevice].
  /// [deviceName] Name of the device.
  /// [virtualName] Virtual Name of the device.
  GetLaunchConfigurationEphemeralBlockDevice({
    required this.deviceName,
    required this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'virtualName': virtualName,
    };
  }

  factory GetLaunchConfigurationEphemeralBlockDevice.fromMap(Map<String, dynamic> map) {
    return GetLaunchConfigurationEphemeralBlockDevice(
      deviceName: (map['deviceName'] as String).input(),
      virtualName: (map['virtualName'] as String).input(),
    );
  }
}

