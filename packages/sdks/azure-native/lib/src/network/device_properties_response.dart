// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of properties of the device.
class DevicePropertiesResponse {
  /// Model of the device.
  final pulumi.Input<String>? deviceModel;
  /// Name of the device Vendor.
  final pulumi.Input<String>? deviceVendor;
  /// Link speed.
  final pulumi.Input<int>? linkSpeedInMbps;

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
      deviceModel: map['deviceModel'] == null ? null : (map['deviceModel'] as String).input(),
      deviceVendor: map['deviceVendor'] == null ? null : (map['deviceVendor'] as String).input(),
      linkSpeedInMbps: map['linkSpeedInMbps'] == null ? null : (map['linkSpeedInMbps'] as int).input(),
    );
  }
}

