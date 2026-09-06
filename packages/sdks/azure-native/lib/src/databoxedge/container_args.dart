// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_container_args_doc}
/// The set of arguments for Container.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_container_args_doc}
class ContainerArgs {
  /// The container name.
  final pulumi.Input<String?>? containerName;
  /// DataFormat for Container
  final pulumi.Input<dynamic> dataFormat;
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
  const ContainerArgs({
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
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFormat: pulumi.Input.fromValue(map['dataFormat']),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
    );
  }
}
