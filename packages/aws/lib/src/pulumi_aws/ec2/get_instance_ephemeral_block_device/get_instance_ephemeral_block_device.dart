// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceEphemeralBlockDevice {
  /// Physical name of the device.
  final String deviceName;

  /// Whether the specified device included in the device mapping was suppressed or not (Boolean).
  final bool? noDevice;

  /// Virtual device name.
  final String? virtualName;

  GetInstanceEphemeralBlockDevice({
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

  factory GetInstanceEphemeralBlockDevice.fromMap(Map<String, dynamic> map) {
    return GetInstanceEphemeralBlockDevice(
      deviceName: map['deviceName'] as String,
      noDevice: map['noDevice'] == null ? null : map['noDevice'] as bool,
      virtualName:
          map['virtualName'] == null ? null : map['virtualName'] as String,
    );
  }
}
