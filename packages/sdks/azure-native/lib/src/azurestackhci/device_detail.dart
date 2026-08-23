// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Device details.
class DeviceDetail {
  /// Resource Id of the device.
  final pulumi.Input<String>? deviceResourceId;

  /// Creates a new [DeviceDetail].
  /// [deviceResourceId] Resource Id of the device.
  const DeviceDetail({
    this.deviceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceResourceId': ?deviceResourceId,
    };
  }

  factory DeviceDetail.fromMap(Map<String, dynamic> map) {
    return DeviceDetail(
      deviceResourceId: (() { final guardedValue = map['deviceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
