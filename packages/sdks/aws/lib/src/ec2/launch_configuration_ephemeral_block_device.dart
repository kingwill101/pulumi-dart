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
    return <String, dynamic>{
      'deviceName': deviceName,
      'noDevice': ?noDevice,
      'virtualName': ?virtualName,
    };
  }

  factory LaunchConfigurationEphemeralBlockDevice.fromMap(Map<String, dynamic> map) {
    return LaunchConfigurationEphemeralBlockDevice(
      deviceName: map['deviceName'] as String,
      noDevice: map['noDevice'] == null ? null : map['noDevice'] as bool,
      virtualName: map['virtualName'] == null ? null : map['virtualName'] as String,
    );
  }
}

