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
  StorageAccountArgs({
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
      dataPolicy: (map['dataPolicy'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      deviceName: (map['deviceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageAccountCredentialId: map['storageAccountCredentialId'] == null ? null : (map['storageAccountCredentialId'] as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName'] as String).input(),
      storageAccountStatus: map['storageAccountStatus'] == null ? null : (map['storageAccountStatus'] as String).input(),
    );
  }
}

