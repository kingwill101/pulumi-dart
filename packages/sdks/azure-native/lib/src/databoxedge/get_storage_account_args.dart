// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_storage_account_args_doc}
/// Arguments for getStorageAccount.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_storage_account_args_doc}
class GetStorageAccountArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The storage account name.
  final pulumi.Input<String> storageAccountName;

  /// Creates a new [GetStorageAccountArgs].
  /// [deviceName] The device name.
  /// [resourceGroupName] The resource group name.
  /// [storageAccountName] The storage account name.
  const GetStorageAccountArgs({
    required this.deviceName,
    required this.resourceGroupName,
    required this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
      'storageAccountName': storageAccountName,
    };
  }

  factory GetStorageAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageAccountArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
    );
  }
}

