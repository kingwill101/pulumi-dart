// ignore_for_file: unused_element, unnecessary_cast

import 'opaque_device_configuration_patch.dart';

/// DeviceClassConfiguration is used in DeviceClass.
class DeviceClassConfigurationPatch {
  /// Opaque provides driver-specific configuration parameters.
  final OpaqueDeviceConfigurationPatch? opaque;

  /// Creates a new [DeviceClassConfigurationPatch].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  DeviceClassConfigurationPatch({
    this.opaque,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?opaque == null ? null : opaque!.toMap(),
    };
  }

  factory DeviceClassConfigurationPatch.fromMap(Map<String, dynamic> map) {
    return DeviceClassConfigurationPatch(
      opaque: map['opaque'] == null ? null : OpaqueDeviceConfigurationPatch.fromMap((map['opaque'] as Map).cast<String, dynamic>()),
    );
  }
}

