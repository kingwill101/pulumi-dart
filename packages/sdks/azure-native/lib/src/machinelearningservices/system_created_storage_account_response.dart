// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_id_response.dart';

class SystemCreatedStorageAccountResponse {
  /// Public blob access allowed
  final pulumi.Input<bool>? allowBlobPublicAccess;
  /// This is populated once the storage account is created.
  final pulumi.Input<ArmResourceIdResponse>? armResourceId;
  /// HNS enabled for storage account
  final pulumi.Input<bool>? storageAccountHnsEnabled;
  /// Name of the storage account
  final pulumi.Input<String>? storageAccountName;
  /// Allowed values:
  /// "Standard_LRS",
  /// "Standard_GRS",
  /// "Standard_RAGRS",
  /// "Standard_ZRS",
  /// "Standard_GZRS",
  /// "Standard_RAGZRS",
  /// "Premium_LRS",
  /// "Premium_ZRS"
  final pulumi.Input<String>? storageAccountType;

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
      'armResourceId': ?pulumi.Input.mapOptionalInputValue<ArmResourceIdResponse, Map<String, dynamic>>(armResourceId, (value) => value.toMap()),
      'storageAccountHnsEnabled': ?storageAccountHnsEnabled,
      'storageAccountName': ?storageAccountName,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory SystemCreatedStorageAccountResponse.fromMap(Map<String, dynamic> map) {
    return SystemCreatedStorageAccountResponse(
      allowBlobPublicAccess: map['allowBlobPublicAccess'] == null ? null : (map['allowBlobPublicAccess'] as bool).input(),
      armResourceId: map['armResourceId'] == null ? null : (ArmResourceIdResponse.fromMap((map['armResourceId'] as Map).cast<String, dynamic>())).input(),
      storageAccountHnsEnabled: map['storageAccountHnsEnabled'] == null ? null : (map['storageAccountHnsEnabled'] as bool).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName'] as String).input(),
      storageAccountType: map['storageAccountType'] == null ? null : (map['storageAccountType'] as String).input(),
    );
  }
}

