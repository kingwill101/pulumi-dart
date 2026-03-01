// ignore_for_file: unused_element, unnecessary_cast

import 'device_configuration.dart';

/// properties for Arc-enabled edge device with HCI OS.
class HciEdgeDeviceProperties {
  /// Device Configuration
  final DeviceConfiguration? deviceConfiguration;

  /// Creates a new [HciEdgeDeviceProperties].
  /// [deviceConfiguration] Device Configuration
  HciEdgeDeviceProperties({
    this.deviceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceConfiguration': ?deviceConfiguration == null ? null : deviceConfiguration!.toMap(),
    };
  }

  factory HciEdgeDeviceProperties.fromMap(Map<String, dynamic> map) {
    return HciEdgeDeviceProperties(
      deviceConfiguration: map['deviceConfiguration'] == null ? null : DeviceConfiguration.fromMap((map['deviceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

