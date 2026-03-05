// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_container_args_doc}
/// Arguments for getContainer.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_container_args_doc}
class GetContainerArgs {
  /// The container Name
  final pulumi.Input<String> containerName;
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The Storage Account Name
  final pulumi.Input<String> storageAccountName;

  /// Creates a new [GetContainerArgs].
  /// [containerName] The container Name
  /// [deviceName] The device name.
  /// [resourceGroupName] The resource group name.
  /// [storageAccountName] The Storage Account Name
  GetContainerArgs({
    required this.containerName,
    required this.deviceName,
    required this.resourceGroupName,
    required this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
      'storageAccountName': storageAccountName,
    };
  }

  factory GetContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerArgs(
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
    );
  }
}

