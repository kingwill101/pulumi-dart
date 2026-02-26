// ignore_for_file: unused_element, unnecessary_cast

class AmiFromInstanceEphemeralBlockDevice {
  /// Path at which the device is exposed to created instances.
  final String? deviceName;

  /// Name for the ephemeral device, of the form "ephemeralN" where
  /// *N* is a volume number starting from zero.
  final String? virtualName;

  AmiFromInstanceEphemeralBlockDevice({
    this.deviceName,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final virtualNameValue = virtualName;
    if (virtualNameValue != null) {
      map['virtualName'] = virtualNameValue;
    }
    return map;
  }

  factory AmiFromInstanceEphemeralBlockDevice.fromMap(
      Map<String, dynamic> map) {
    return AmiFromInstanceEphemeralBlockDevice(
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      virtualName:
          map['virtualName'] == null ? null : map['virtualName'] as String,
    );
  }
}
