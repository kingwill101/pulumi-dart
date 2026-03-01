// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account_response.dart';

/// The storage profile.
class StorageProfileResponse {
  /// The list of storage accounts in the cluster.
  final List<StorageAccountResponse>? storageaccounts;

  /// Creates a new [StorageProfileResponse].
  /// [storageaccounts] The list of storage accounts in the cluster.
  StorageProfileResponse({
    this.storageaccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageaccounts': ?storageaccounts == null ? null : pulumi.Input.encodeList<StorageAccountResponse, Map<String, dynamic>>(storageaccounts!, (value) => value.toMap()),
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      storageaccounts: map['storageaccounts'] == null ? null : pulumi.Input.decodeList<StorageAccountResponse>(map['storageaccounts'], (value) => StorageAccountResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

