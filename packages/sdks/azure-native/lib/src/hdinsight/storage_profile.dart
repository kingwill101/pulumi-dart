// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account.dart';

/// The storage profile.
class StorageProfile {
  /// The list of storage accounts in the cluster.
  final pulumi.Input<List<StorageAccount>>? storageaccounts;

  /// Creates a new [StorageProfile].
  /// [storageaccounts] The list of storage accounts in the cluster.
  StorageProfile({
    this.storageaccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageaccounts': ?pulumi.Input.mapOptionalInputValue<List<StorageAccount>, List<Map<String, dynamic>>>(storageaccounts, (value) => pulumi.Input.encodeList<StorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      storageaccounts: map['storageaccounts'] == null ? null : (pulumi.Input.decodeList<StorageAccount>(map['storageaccounts']!, (value) => StorageAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

