// ignore_for_file: unused_element, unnecessary_cast

import 'arm_resource_id.dart';

class SystemCreatedStorageAccount {
  /// Public blob access allowed
  final bool? allowBlobPublicAccess;
  /// This is populated once the storage account is created.
  final ArmResourceId? armResourceId;
  /// HNS enabled for storage account
  final bool? storageAccountHnsEnabled;
  /// Name of the storage account
  final String? storageAccountName;
  /// Allowed values:
  /// "Standard_LRS",
  /// "Standard_GRS",
  /// "Standard_RAGRS",
  /// "Standard_ZRS",
  /// "Standard_GZRS",
  /// "Standard_RAGZRS",
  /// "Premium_LRS",
  /// "Premium_ZRS"
  final String? storageAccountType;

  /// Creates a new [SystemCreatedStorageAccount].
  /// [allowBlobPublicAccess] Public blob access allowed
  /// [armResourceId] This is populated once the storage account is created.
  /// [storageAccountHnsEnabled] HNS enabled for storage account
  /// [storageAccountName] Name of the storage account
  /// [storageAccountType] Allowed values:
  SystemCreatedStorageAccount({
    this.allowBlobPublicAccess,
    this.armResourceId,
    this.storageAccountHnsEnabled,
    this.storageAccountName,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowBlobPublicAccess': ?allowBlobPublicAccess,
      'armResourceId': ?armResourceId == null ? null : armResourceId!.toMap(),
      'storageAccountHnsEnabled': ?storageAccountHnsEnabled,
      'storageAccountName': ?storageAccountName,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory SystemCreatedStorageAccount.fromMap(Map<String, dynamic> map) {
    return SystemCreatedStorageAccount(
      allowBlobPublicAccess: map['allowBlobPublicAccess'] == null ? null : map['allowBlobPublicAccess'] as bool,
      armResourceId: map['armResourceId'] == null ? null : ArmResourceId.fromMap((map['armResourceId'] as Map).cast<String, dynamic>()),
      storageAccountHnsEnabled: map['storageAccountHnsEnabled'] == null ? null : map['storageAccountHnsEnabled'] as bool,
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

