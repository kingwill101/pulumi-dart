// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account_response.dart';

/// The storage profile.
class StorageProfileResponse {
  /// The list of storage accounts in the cluster.
  final pulumi.Input<List<StorageAccountResponse>>? storageaccounts;

  /// Creates a new [StorageProfileResponse].
  /// [storageaccounts] The list of storage accounts in the cluster.
  const StorageProfileResponse({
    this.storageaccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageaccounts': ?pulumi.Input.mapOptionalInputValue<List<StorageAccountResponse>, List<Map<String, dynamic>>>(storageaccounts, (value) => pulumi.Input.encodeList<StorageAccountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      storageaccounts: (() { final guardedValue = map['storageaccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageAccountResponse>(guardedValue, (value) => StorageAccountResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
