// ignore_for_file: unused_element, unnecessary_cast

import 'celdevice_selector_resource_k8s_io_v1beta1.dart';

/// DeviceSelector must have exactly one field set.
class DeviceSelectorResourceK8sIoV1beta1 {
  /// CEL contains a CEL expression for selecting a device.
  final CELDeviceSelectorResourceK8sIoV1beta1? cel;

  /// Creates a new [DeviceSelectorResourceK8sIoV1beta1].
  /// [cel] CEL contains a CEL expression for selecting a device.
  DeviceSelectorResourceK8sIoV1beta1({
    this.cel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cel': ?cel == null ? null : cel!.toMap(),
    };
  }

  factory DeviceSelectorResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceSelectorResourceK8sIoV1beta1(
      cel: map['cel'] == null ? null : CELDeviceSelectorResourceK8sIoV1beta1.fromMap((map['cel'] as Map).cast<String, dynamic>()),
    );
  }
}

