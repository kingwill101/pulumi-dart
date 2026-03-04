// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_namespace_discovered_device_args_doc}
/// Arguments for getNamespaceDiscoveredDevice.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_namespace_discovered_device_args_doc}
class GetNamespaceDiscoveredDeviceArgs {
  /// The name of the discovered device.
  final pulumi.Input<String> discoveredDeviceName;

  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNamespaceDiscoveredDeviceArgs].
  /// [discoveredDeviceName] The name of the discovered device.
  /// [namespaceName] The name of the namespace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNamespaceDiscoveredDeviceArgs({
    required this.discoveredDeviceName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveredDeviceName': discoveredDeviceName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespaceDiscoveredDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceDiscoveredDeviceArgs(
      discoveredDeviceName: pulumi.Input.fromValue(
        map['discoveredDeviceName'] as String,
      ),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
