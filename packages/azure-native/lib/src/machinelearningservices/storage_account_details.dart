// ignore_for_file: unused_element, unnecessary_cast

import 'system_created_storage_account.dart';

/// Details of storage account to be used for the Registry
class StorageAccountDetails {
  /// Details of system created storage account to be used for the registry
  final SystemCreatedStorageAccount? systemCreatedStorageAccount;

  /// Creates a new [StorageAccountDetails].
  /// [systemCreatedStorageAccount] Details of system created storage account to be used for the registry
  StorageAccountDetails({
    this.systemCreatedStorageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemCreatedStorageAccount': ?systemCreatedStorageAccount == null ? null : systemCreatedStorageAccount!.toMap(),
    };
  }

  factory StorageAccountDetails.fromMap(Map<String, dynamic> map) {
    return StorageAccountDetails(
      systemCreatedStorageAccount: map['systemCreatedStorageAccount'] == null ? null : SystemCreatedStorageAccount.fromMap((map['systemCreatedStorageAccount'] as Map).cast<String, dynamic>()),
    );
  }
}

