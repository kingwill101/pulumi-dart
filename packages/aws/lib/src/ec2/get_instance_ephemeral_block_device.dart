// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceEphemeralBlockDevice {
  /// Physical name of the device.
  final String deviceName;

  /// Whether the specified device included in the device mapping was suppressed or not (Boolean).
  final bool? noDevice;

  /// Virtual device name.
  final String? virtualName;

  /// Creates a new [GetInstanceEphemeralBlockDevice].
  /// [deviceName] Physical name of the device.
  /// [noDevice] Whether the specified device included in the device mapping was suppressed or not (Boolean).
  /// [virtualName] Virtual device name.
  GetInstanceEphemeralBlockDevice({
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

  factory GetInstanceEphemeralBlockDevice.fromMap(Map<String, dynamic> map) {
    return GetInstanceEphemeralBlockDevice(
      deviceName: map['deviceName'] as String,
      noDevice: map['noDevice'] == null ? null : map['noDevice'] as bool,
      virtualName: map['virtualName'] == null
          ? null
          : map['virtualName'] as String,
    );
  }
}
