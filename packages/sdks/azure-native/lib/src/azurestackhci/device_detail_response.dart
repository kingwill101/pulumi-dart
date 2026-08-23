// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Device details.
class DeviceDetailResponse {
  /// Resource Id of group device belongs to.
  final pulumi.Input<String> claimedBy;
  /// Resource Id of the device.
  final pulumi.Input<String>? deviceResourceId;

  /// Creates a new [DeviceDetailResponse].
  /// [claimedBy] Resource Id of group device belongs to.
  /// [deviceResourceId] Resource Id of the device.
  const DeviceDetailResponse({
    required this.claimedBy,
    this.deviceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimedBy': claimedBy,
      'deviceResourceId': ?deviceResourceId,
    };
  }

  factory DeviceDetailResponse.fromMap(Map<String, dynamic> map) {
    return DeviceDetailResponse(
      claimedBy: pulumi.Input.fromValue(map['claimedBy'] as String),
      deviceResourceId: (() { final guardedValue = map['deviceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
