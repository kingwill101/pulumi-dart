// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_configuration.dart';

/// properties for Arc-enabled edge device with HCI OS.
class HciEdgeDeviceProperties {
  /// Device Configuration
  final pulumi.Input<DeviceConfiguration?>? deviceConfiguration;

  /// Creates a new [HciEdgeDeviceProperties].
  /// [deviceConfiguration] Device Configuration
  const HciEdgeDeviceProperties({
    this.deviceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceConfiguration': ?pulumi.Input.mapOptionalInputValue<DeviceConfiguration, Map<String, dynamic>>(deviceConfiguration, (value) => value.toMap()),
    };
  }

  factory HciEdgeDeviceProperties.fromMap(Map<String, dynamic> map) {
    return HciEdgeDeviceProperties(
      deviceConfiguration: (() { final guardedValue = map['deviceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
