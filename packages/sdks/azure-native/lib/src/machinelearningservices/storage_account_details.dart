// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_created_storage_account.dart';

/// Details of storage account to be used for the Registry
class StorageAccountDetails {
  /// Details of system created storage account to be used for the registry
  final pulumi.Input<SystemCreatedStorageAccount?>? systemCreatedStorageAccount;

  /// Creates a new [StorageAccountDetails].
  /// [systemCreatedStorageAccount] Details of system created storage account to be used for the registry
  const StorageAccountDetails({
    this.systemCreatedStorageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemCreatedStorageAccount': ?pulumi.Input.mapOptionalInputValue<SystemCreatedStorageAccount, Map<String, dynamic>>(systemCreatedStorageAccount, (value) => value.toMap()),
    };
  }

  factory StorageAccountDetails.fromMap(Map<String, dynamic> map) {
    return StorageAccountDetails(
      systemCreatedStorageAccount: (() { final guardedValue = map['systemCreatedStorageAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemCreatedStorageAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
