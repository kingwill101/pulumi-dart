// ignore_for_file: unused_element, unnecessary_cast

class LaunchConfigurationEphemeralBlockDevice {
  final String deviceName;
  final bool? noDevice;
  final String? virtualName;

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

  factory LaunchConfigurationEphemeralBlockDevice.fromMap(
      Map<String, dynamic> map) {
    return LaunchConfigurationEphemeralBlockDevice(
      deviceName: map['deviceName'] as String,
      noDevice: map['noDevice'] == null ? null : map['noDevice'] as bool,
      virtualName:
          map['virtualName'] == null ? null : map['virtualName'] as String,
    );
  }
}
