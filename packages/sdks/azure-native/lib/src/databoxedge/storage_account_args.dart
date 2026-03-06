// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_storage_account_args_doc}
/// The set of arguments for StorageAccount.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_storage_account_args_doc}
class StorageAccountArgs {
  /// Data policy of the storage Account.
  final pulumi.Input<String> dataPolicy;
  /// Description for the storage Account.
  final pulumi.Input<String>? description;
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Storage Account Credential Id
  final pulumi.Input<String>? storageAccountCredentialId;
  /// The StorageAccount name.
  final pulumi.Input<String>? storageAccountName;
  /// Current status of the storage account
  final pulumi.Input<String>? storageAccountStatus;

  /// Creates a new [StorageAccountArgs].
  /// [dataPolicy] Data policy of the storage Account.
  /// [description] Description for the storage Account.
  /// [deviceName] The device name.
  /// [resourceGroupName] The resource group name.
  /// [storageAccountCredentialId] Storage Account Credential Id
  /// [storageAccountName] The StorageAccount name.
  /// [storageAccountStatus] Current status of the storage account
  const StorageAccountArgs({
    required this.dataPolicy,
    this.description,
    required this.deviceName,
    required this.resourceGroupName,
    this.storageAccountCredentialId,
    this.storageAccountName,
    this.storageAccountStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPolicy': dataPolicy,
      'description': ?description,
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
      'storageAccountCredentialId': ?storageAccountCredentialId,
      'storageAccountName': ?storageAccountName,
      'storageAccountStatus': ?storageAccountStatus,
    };
  }

  factory StorageAccountArgs.fromMap(Map<String, dynamic> map) {
    return StorageAccountArgs(
      dataPolicy: pulumi.Input.fromValue(map['dataPolicy'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageAccountCredentialId: (() { final guardedValue = map['storageAccountCredentialId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountStatus: (() { final guardedValue = map['storageAccountStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

