// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDevice.
class GetDeviceCloudiotV1Args {
  final pulumi.Input<String> deviceId;
  final pulumi.Input<String>? fieldMask;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registryId;

  GetDeviceCloudiotV1Args({
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

  factory GetDeviceCloudiotV1Args.fromMap(Map<String, dynamic> map) {
    return GetDeviceCloudiotV1Args(
      deviceId: pulumi.Input.asInput<String>(map['deviceId']),
      fieldMask: pulumi.Input.asOptionalInput<String>(map['fieldMask']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      registryId: pulumi.Input.asInput<String>(map['registryId']),
    );
  }
}
