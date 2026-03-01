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
    pulumi.Output<String>? containerName,
    required pulumi.Output<String> dataFormat,
    required pulumi.Output<String> deviceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageAccountName,
  }) :
      containerName = pulumi.Input.asOptionalInput<String>(containerName),
      dataFormat = pulumi.Input.asInput<String>(dataFormat),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName);

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
      containerName: map['containerName'] == null ? null : pulumi.Output.create<String>(map['containerName'] as String),
      dataFormat: pulumi.Output.create<String>(map['dataFormat'] as String),
      deviceName: pulumi.Output.create<String>(map['deviceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageAccountName: pulumi.Output.create<String>(map['storageAccountName'] as String),
    );
  }
}

