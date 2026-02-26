// ignore_for_file: unused_element, unnecessary_cast

/// The device state, as reported by the device.
class DeviceStateResponse {
  /// The device state data.
  final String binaryData;

  /// [Output only] The time at which this state version was updated in Cloud IoT Core.
  final String updateTime;

  DeviceStateResponse({
    required this.binaryData,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['binaryData'] = binaryData;
    map['updateTime'] = updateTime;
    return map;
  }

  factory DeviceStateResponse.fromMap(Map<String, dynamic> map) {
    return DeviceStateResponse(
      binaryData: map['binaryData'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
