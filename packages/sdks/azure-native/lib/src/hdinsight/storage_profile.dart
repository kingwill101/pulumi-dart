// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account.dart';

/// The storage profile.
class StorageProfile {
  /// The list of storage accounts in the cluster.
  final List<StorageAccount>? storageaccounts;

  /// Creates a new [StorageProfile].
  /// [storageaccounts] The list of storage accounts in the cluster.
  StorageProfile({
    this.storageaccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageaccounts': ?storageaccounts == null ? null : pulumi.Input.encodeList<StorageAccount, Map<String, dynamic>>(storageaccounts!, (value) => value.toMap()),
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      storageaccounts: map['storageaccounts'] == null ? null : pulumi.Input.decodeList<StorageAccount>(map['storageaccounts'], (value) => StorageAccount.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

