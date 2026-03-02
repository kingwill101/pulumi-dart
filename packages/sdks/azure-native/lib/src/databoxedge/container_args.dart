// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_container_args_doc}
/// The set of arguments for Container.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_container_args_doc}
class ContainerArgs {
  /// The container name.
  final pulumi.Input<String>? containerName;
  /// DataFormat for Container
  final pulumi.Input<String> dataFormat;
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The Storage Account Name
  final pulumi.Input<String> storageAccountName;

  /// Creates a new [ContainerArgs].
  /// [containerName] The container name.
  /// [dataFormat] DataFormat for Container
  /// [deviceName] The device name.
  /// [resourceGroupName] The resource group name.
  /// [storageAccountName] The Storage Account Name
  ContainerArgs({
    this.containerName,
    required this.dataFormat,
    required this.deviceName,
    required this.resourceGroupName,
    required this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'dataFormat': dataFormat,
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
      'storageAccountName': storageAccountName,
    };
  }

  factory ContainerArgs.fromMap(Map<String, dynamic> map) {
    return ContainerArgs(
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      dataFormat: (map['dataFormat'] as String).input(),
      deviceName: (map['deviceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageAccountName: (map['storageAccountName'] as String).input(),
    );
  }
}

