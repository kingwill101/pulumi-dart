// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines which device and endpoint to use for this asset
class DeviceRef {
  /// Name of the device resource
  final pulumi.Input<String> deviceName;
  /// The name of endpoint to use
  final pulumi.Input<String> endpointName;

  /// Creates a new [DeviceRef].
  /// [deviceName] Name of the device resource
  /// [endpointName] The name of endpoint to use
  const DeviceRef({
    required this.deviceName,
    required this.endpointName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'endpointName': endpointName,
    };
  }

  factory DeviceRef.fromMap(Map<String, dynamic> map) {
    return DeviceRef(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
    );
  }
}

