// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// storage resource of type Azure Storage Account.
class StorageAccount {
  /// The account key of the Azure Storage Account.
  final pulumi.Input<String> accountKey;
  /// The account name of the Azure Storage Account.
  final pulumi.Input<String> accountName;
  /// The type of the storage.
  /// Expected value is 'StorageAccount'.
  final pulumi.Input<String> storageType;

  /// Creates a new [StorageAccount].
  /// [accountKey] The account key of the Azure Storage Account.
  /// [accountName] The account name of the Azure Storage Account.
  /// [storageType] The type of the storage.
  StorageAccount({
    required this.accountKey,
    required this.accountName,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': accountKey,
      'accountName': accountName,
      'storageType': storageType,
    };
  }

  factory StorageAccount.fromMap(Map<String, dynamic> map) {
    return StorageAccount(
      accountKey: (map['accountKey'] as String).input(),
      accountName: (map['accountName'] as String).input(),
      storageType: (map['storageType'] as String).input(),
    );
  }
}

