// ignore_for_file: unused_element, unnecessary_cast

class InstanceEphemeralBlockDevice {
  /// Name of the block device to mount on the instance.
  final String deviceName;

  /// Suppresses the specified device included in the AMI's block device mapping.
  final bool? noDevice;

  /// [Instance Store Device Name](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#InstanceStoreDeviceNames) (e.g., `ephemeral0`).
  ///
  /// Each AWS Instance type has a different set of Instance Store block devices available for attachment. AWS [publishes a list](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#StorageOnInstanceTypes) of which ephemeral devices are available on each type. The devices are always identified by the `virtual_name` in the format `ephemeral{0..N}`.
  final String? virtualName;

  InstanceEphemeralBlockDevice({
    required this.deviceName,
    this.noDevice,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceName'] = deviceName;
    final noDeviceValue = noDevice;
    if (noDeviceValue != null) {
      map['noDevice'] = noDeviceValue;
    }
    final virtualNameValue = virtualName;
    if (virtualNameValue != null) {
      map['virtualName'] = virtualNameValue;
    }
    return map;
  }

  factory InstanceEphemeralBlockDevice.fromMap(Map<String, dynamic> map) {
    return InstanceEphemeralBlockDevice(
      deviceName: map['deviceName'] as String,
      noDevice: map['noDevice'] == null ? null : map['noDevice'] as bool,
      virtualName:
          map['virtualName'] == null ? null : map['virtualName'] as String,
    );
  }
}
