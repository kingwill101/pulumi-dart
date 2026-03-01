// ignore_for_file: unused_element, unnecessary_cast


/// Device Update account integration with IoT Hub settings.
class IotHubSettings {
  /// IoTHub resource ID
  final String resourceId;

  /// Creates a new [IotHubSettings].
  /// [resourceId] IoTHub resource ID
  IotHubSettings({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory IotHubSettings.fromMap(Map<String, dynamic> map) {
    return IotHubSettings(
      resourceId: map['resourceId'] as String,
    );
  }
}

