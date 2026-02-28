// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudiot_v1_get_device_args_doc}
/// Arguments for getDevice.
/// {@endtemplate}
/// {@macro pulumi_cloudiot_v1_get_device_args_doc}
class GetDeviceArgs {
  final pulumi.Input<String> deviceId;
  final pulumi.Input<String>? fieldMask;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registryId;

  /// Creates a new [GetDeviceArgs].
  /// [deviceId] Required.
  /// [fieldMask] Optional.
  /// [location] Required.
  /// [project] Optional.
  /// [registryId] Required.
  GetDeviceArgs({
    required String deviceId,
    String? fieldMask,
    required String location,
    String? project,
    required String registryId,
  }) :
      deviceId = pulumi.Input.asInput<String>(deviceId),
      fieldMask = pulumi.Input.asOptionalInput<String>(fieldMask),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      registryId = pulumi.Input.asInput<String>(registryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceId': deviceId,
      'fieldMask': ?fieldMask,
      'location': location,
      'project': ?project,
      'registryId': registryId,
    };
  }

  factory GetDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceArgs(
      deviceId: map['deviceId'] as String,
      fieldMask: map['fieldMask'] == null ? null : map['fieldMask'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      registryId: map['registryId'] as String,
    );
  }
}

