// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDevice.
class GetDeviceArgs3 {
  final Input<String> deviceId;
  final Input<String>? fieldMask;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> registryId;

  GetDeviceArgs3({
    required this.deviceId,
    this.fieldMask,
    required this.location,
    this.project,
    required this.registryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceId'] = deviceId;
    final fieldMaskValue = fieldMask;
    if (fieldMaskValue != null) {
      map['fieldMask'] = fieldMaskValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['registryId'] = registryId;
    return map;
  }

  factory GetDeviceArgs3.fromMap(Map<String, dynamic> map) {
    return GetDeviceArgs3(
      deviceId: Input.asInput<String>(map['deviceId']),
      fieldMask: Input.asOptionalInput<String>(map['fieldMask']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      registryId: Input.asInput<String>(map['registryId']),
    );
  }
}
