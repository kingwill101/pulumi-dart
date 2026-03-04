// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of properties of the device.
class DeviceProperties {
  /// Model of the device.
  final pulumi.Input<String>? deviceModel;

  /// Name of the device Vendor.
  final pulumi.Input<String>? deviceVendor;

  /// Link speed.
  final pulumi.Input<int>? linkSpeedInMbps;

  /// Creates a new [DeviceProperties].
  /// [deviceModel] Model of the device.
  /// [deviceVendor] Name of the device Vendor.
  /// [linkSpeedInMbps] Link speed.
  DeviceProperties({this.deviceModel, this.deviceVendor, this.linkSpeedInMbps});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceModel': ?deviceModel,
      'deviceVendor': ?deviceVendor,
      'linkSpeedInMbps': ?linkSpeedInMbps,
    };
  }

  factory DeviceProperties.fromMap(Map<String, dynamic> map) {
    return DeviceProperties(
      deviceModel: (() {
        final guardedValue = map['deviceModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceVendor: (() {
        final guardedValue = map['deviceVendor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkSpeedInMbps: (() {
        final guardedValue = map['linkSpeedInMbps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
