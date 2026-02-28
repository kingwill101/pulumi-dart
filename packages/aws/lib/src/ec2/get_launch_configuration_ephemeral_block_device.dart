// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchConfigurationEphemeralBlockDevice {
  /// Name of the device.
  final String deviceName;

  /// Virtual Name of the device.
  final String virtualName;

  /// Creates a new [GetLaunchConfigurationEphemeralBlockDevice].
  /// [deviceName] Name of the device.
  /// [virtualName] Virtual Name of the device.
  GetLaunchConfigurationEphemeralBlockDevice({
    required this.deviceName,
    required this.virtualName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceName'] = deviceName;
    map['virtualName'] = virtualName;
    return map;
  }

  factory GetLaunchConfigurationEphemeralBlockDevice.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchConfigurationEphemeralBlockDevice(
      deviceName: map['deviceName'] as String,
      virtualName: map['virtualName'] as String,
    );
  }
}
