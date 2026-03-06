// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_id.dart';

class SystemCreatedStorageAccount {
  /// Public blob access allowed
  final pulumi.Input<bool>? allowBlobPublicAccess;
  /// This is populated once the storage account is created.
  final pulumi.Input<ArmResourceId>? armResourceId;
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

  /// Creates a new [SystemCreatedStorageAccount].
  /// [allowBlobPublicAccess] Public blob access allowed
  /// [armResourceId] This is populated once the storage account is created.
  /// [storageAccountHnsEnabled] HNS enabled for storage account
  /// [storageAccountName] Name of the storage account
  /// [storageAccountType] Allowed values:
  const SystemCreatedStorageAccount({
    this.allowBlobPublicAccess,
    this.armResourceId,
    this.storageAccountHnsEnabled,
    this.storageAccountName,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowBlobPublicAccess': ?allowBlobPublicAccess,
      'armResourceId': ?pulumi.Input.mapOptionalInputValue<ArmResourceId, Map<String, dynamic>>(armResourceId, (value) => value.toMap()),
      'storageAccountHnsEnabled': ?storageAccountHnsEnabled,
      'storageAccountName': ?storageAccountName,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory SystemCreatedStorageAccount.fromMap(Map<String, dynamic> map) {
    return SystemCreatedStorageAccount(
      allowBlobPublicAccess: (() { final guardedValue = map['allowBlobPublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      armResourceId: (() { final guardedValue = map['armResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArmResourceId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountHnsEnabled: (() { final guardedValue = map['storageAccountHnsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

