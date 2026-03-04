// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_namespace_device_args_doc}
/// Arguments for getNamespaceDevice.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_namespace_device_args_doc}
class GetNamespaceDeviceArgs {
  /// The name of the device.
  final pulumi.Input<String> deviceName;

  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNamespaceDeviceArgs].
  /// [deviceName] The name of the device.
  /// [namespaceName] The name of the namespace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNamespaceDeviceArgs({
    required this.deviceName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespaceDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceDeviceArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
