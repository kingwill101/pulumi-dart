// ignore_for_file: unused_element, unnecessary_cast

import 'arm_resource_id_response.dart';

class SystemCreatedStorageAccountResponse {
  /// Public blob access allowed
  final bool? allowBlobPublicAccess;
  /// This is populated once the storage account is created.
  final ArmResourceIdResponse? armResourceId;
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

  /// Creates a new [SystemCreatedStorageAccountResponse].
  /// [allowBlobPublicAccess] Public blob access allowed
  /// [armResourceId] This is populated once the storage account is created.
  /// [storageAccountHnsEnabled] HNS enabled for storage account
  /// [storageAccountName] Name of the storage account
  /// [storageAccountType] Allowed values:
  SystemCreatedStorageAccountResponse({
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

  factory SystemCreatedStorageAccountResponse.fromMap(Map<String, dynamic> map) {
    return SystemCreatedStorageAccountResponse(
      allowBlobPublicAccess: map['allowBlobPublicAccess'] == null ? null : map['allowBlobPublicAccess'] as bool,
      armResourceId: map['armResourceId'] == null ? null : ArmResourceIdResponse.fromMap((map['armResourceId'] as Map).cast<String, dynamic>()),
      storageAccountHnsEnabled: map['storageAccountHnsEnabled'] == null ? null : map['storageAccountHnsEnabled'] as bool,
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

