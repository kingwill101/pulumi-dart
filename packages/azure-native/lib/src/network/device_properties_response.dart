// ignore_for_file: unused_element, unnecessary_cast


/// List of properties of the device.
class DevicePropertiesResponse {
  /// Model of the device.
  final String? deviceModel;
  /// Name of the device Vendor.
  final String? deviceVendor;
  /// Link speed.
  final int? linkSpeedInMbps;

  /// Creates a new [DevicePropertiesResponse].
  /// [deviceModel] Model of the device.
  /// [deviceVendor] Name of the device Vendor.
  /// [linkSpeedInMbps] Link speed.
  DevicePropertiesResponse({
    this.deviceModel,
    this.deviceVendor,
    this.linkSpeedInMbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceModel': ?deviceModel,
      'deviceVendor': ?deviceVendor,
      'linkSpeedInMbps': ?linkSpeedInMbps,
    };
  }

  factory DevicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DevicePropertiesResponse(
      deviceModel: map['deviceModel'] == null ? null : map['deviceModel'] as String,
      deviceVendor: map['deviceVendor'] == null ? null : map['deviceVendor'] as String,
      linkSpeedInMbps: map['linkSpeedInMbps'] == null ? null : map['linkSpeedInMbps'] as int,
    );
  }
}

