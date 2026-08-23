// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchConfigurationEphemeralBlockDevice {
  /// The name of the block device to mount on the instance.
  final pulumi.Input<String> deviceName;
  /// Whether the device in the block device mapping of the AMI is suppressed.
  final pulumi.Input<bool>? noDevice;
  /// The [Instance Store Device Name](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#InstanceStoreDeviceNames).
  final pulumi.Input<String>? virtualName;

  /// Creates a new [LaunchConfigurationEphemeralBlockDevice].
  /// [deviceName] The name of the block device to mount on the instance.
  /// [noDevice] Whether the device in the block device mapping of the AMI is suppressed.
  /// [virtualName] The [Instance Store Device Name](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#InstanceStoreDeviceNames).
  const LaunchConfigurationEphemeralBlockDevice({
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
