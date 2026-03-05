// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Device Update account integration with IoT Hub settings.
class IotHubSettingsResponse {
  /// IoTHub resource ID
  final pulumi.Input<String> resourceId;

  /// Creates a new [IotHubSettingsResponse].
  /// [resourceId] IoTHub resource ID
  IotHubSettingsResponse({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory IotHubSettingsResponse.fromMap(Map<String, dynamic> map) {
    return IotHubSettingsResponse(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

