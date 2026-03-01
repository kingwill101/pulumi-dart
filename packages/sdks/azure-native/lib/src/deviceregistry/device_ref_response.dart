// ignore_for_file: unused_element, unnecessary_cast


/// Defines which device and endpoint to use for this asset
class DeviceRefResponse {
  /// Name of the device resource
  final String deviceName;
  /// The name of endpoint to use
  final String endpointName;

  /// Creates a new [DeviceRefResponse].
  /// [deviceName] Name of the device resource
  /// [endpointName] The name of endpoint to use
  DeviceRefResponse({
    required this.deviceName,
    required this.endpointName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'endpointName': endpointName,
    };
  }

  factory DeviceRefResponse.fromMap(Map<String, dynamic> map) {
    return DeviceRefResponse(
      deviceName: map['deviceName'] as String,
      endpointName: map['endpointName'] as String,
    );
  }
}

