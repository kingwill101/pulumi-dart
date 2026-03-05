// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_info_response.dart';

/// Result data returned by listProviderActionInUseStorageAccounts.
class ListProviderActionInUseStorageAccountsResult {
  /// The storage account list which in use in related reports.
  final List<StorageInfoResponse>? storageAccountList;

  /// Creates a new [ListProviderActionInUseStorageAccountsResult].
  /// [storageAccountList] The storage account list which in use in related reports.
  ListProviderActionInUseStorageAccountsResult({
    this.storageAccountList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountList': ?(() { final guardedValue = storageAccountList; if (guardedValue == null) return null; return pulumi.Input.encodeList<StorageInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListProviderActionInUseStorageAccountsResult.fromMap(Map<String, dynamic> map) {
    return ListProviderActionInUseStorageAccountsResult(
      storageAccountList: (() { final guardedValue = map['storageAccountList']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageInfoResponse>(guardedValue, (value) => StorageInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

