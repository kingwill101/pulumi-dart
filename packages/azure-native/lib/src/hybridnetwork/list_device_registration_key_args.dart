// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_list_device_registration_key_args_doc}
/// Arguments for listDeviceRegistrationKey.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_list_device_registration_key_args_doc}
class ListDeviceRegistrationKeyArgs {
  /// The name of the device resource.
  final pulumi.Input<String> deviceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListDeviceRegistrationKeyArgs].
  /// [deviceName] The name of the device resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListDeviceRegistrationKeyArgs({
    required String deviceName,
    required String resourceGroupName,
  }) :
      deviceName = pulumi.Input.asInput<String>(deviceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListDeviceRegistrationKeyArgs.fromMap(Map<String, dynamic> map) {
    return ListDeviceRegistrationKeyArgs(
      deviceName: map['deviceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

