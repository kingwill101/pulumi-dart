// ignore_for_file: unused_element, unnecessary_cast

import 'system_created_storage_account_response.dart';

/// Details of storage account to be used for the Registry
class StorageAccountDetailsResponse {
  /// Details of system created storage account to be used for the registry
  final SystemCreatedStorageAccountResponse? systemCreatedStorageAccount;

  /// Creates a new [StorageAccountDetailsResponse].
  /// [systemCreatedStorageAccount] Details of system created storage account to be used for the registry
  StorageAccountDetailsResponse({
    this.systemCreatedStorageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemCreatedStorageAccount': ?systemCreatedStorageAccount == null ? null : systemCreatedStorageAccount!.toMap(),
    };
  }

  factory StorageAccountDetailsResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountDetailsResponse(
      systemCreatedStorageAccount: map['systemCreatedStorageAccount'] == null ? null : SystemCreatedStorageAccountResponse.fromMap((map['systemCreatedStorageAccount'] as Map).cast<String, dynamic>()),
    );
  }
}

