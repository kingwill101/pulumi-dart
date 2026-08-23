// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceEphemeralBlockDevice {
  /// Name of the block device to mount on the instance.
  final pulumi.Input<String> deviceName;
  /// Suppresses the specified device included in the AMI's block device mapping.
  final pulumi.Input<bool>? noDevice;
  /// [Instance Store Device Name](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#InstanceStoreDeviceNames) (e.g., `ephemeral0`).
  ///
  /// Each AWS Instance type has a different set of Instance Store block devices available for attachment. AWS [publishes a list](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#StorageOnInstanceTypes) of which ephemeral devices are available on each type. The devices are always identified by the `virtualName` in the format `ephemeral{0..N}`.
  final pulumi.Input<String>? virtualName;

  /// Creates a new [InstanceEphemeralBlockDevice].
  /// [deviceName] Name of the block device to mount on the instance.
  /// [noDevice] Suppresses the specified device included in the AMI's block device mapping.
  /// [virtualName] [Instance Store Device Name](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#InstanceStoreDeviceNames) (e.g., `ephemeral0`).
  const InstanceEphemeralBlockDevice({
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

  factory InstanceEphemeralBlockDevice.fromMap(Map<String, dynamic> map) {
    return InstanceEphemeralBlockDevice(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      noDevice: (() { final guardedValue = map['noDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualName: (() { final guardedValue = map['virtualName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
