// ignore_for_file: unused_element, unnecessary_cast

import 'opaque_device_configuration.dart';

/// DeviceClassConfiguration is used in DeviceClass.
class DeviceClassConfiguration {
  /// Opaque provides driver-specific configuration parameters.
  final OpaqueDeviceConfiguration? opaque;

  /// Creates a new [DeviceClassConfiguration].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  DeviceClassConfiguration({
    this.opaque,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?opaque == null ? null : opaque!.toMap(),
    };
  }

  factory DeviceClassConfiguration.fromMap(Map<String, dynamic> map) {
    return DeviceClassConfiguration(
      opaque: map['opaque'] == null ? null : OpaqueDeviceConfiguration.fromMap((map['opaque'] as Map).cast<String, dynamic>()),
    );
  }
}

