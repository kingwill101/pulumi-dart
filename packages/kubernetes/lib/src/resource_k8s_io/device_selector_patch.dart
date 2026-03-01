// ignore_for_file: unused_element, unnecessary_cast

import 'celdevice_selector_patch.dart';

/// DeviceSelector must have exactly one field set.
class DeviceSelectorPatch {
  /// CEL contains a CEL expression for selecting a device.
  final CELDeviceSelectorPatch? cel;

  /// Creates a new [DeviceSelectorPatch].
  /// [cel] CEL contains a CEL expression for selecting a device.
  DeviceSelectorPatch({
    this.cel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cel': ?cel == null ? null : cel!.toMap(),
    };
  }

  factory DeviceSelectorPatch.fromMap(Map<String, dynamic> map) {
    return DeviceSelectorPatch(
      cel: map['cel'] == null ? null : CELDeviceSelectorPatch.fromMap((map['cel'] as Map).cast<String, dynamic>()),
    );
  }
}

