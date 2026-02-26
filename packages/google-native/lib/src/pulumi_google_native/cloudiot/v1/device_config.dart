// ignore_for_file: unused_element, unnecessary_cast

/// The device configuration. Eventually delivered to devices.
class DeviceConfig {
  /// The device configuration data.
  final String? binaryData;

  DeviceConfig({
    this.binaryData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final binaryDataValue = binaryData;
    if (binaryDataValue != null) {
      map['binaryData'] = binaryDataValue;
    }
    return map;
  }

  factory DeviceConfig.fromMap(Map<String, dynamic> map) {
    return DeviceConfig(
      binaryData:
          map['binaryData'] == null ? null : map['binaryData'] as String,
    );
  }
}
