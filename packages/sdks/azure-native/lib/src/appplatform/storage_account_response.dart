// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// storage resource of type Azure Storage Account.
class StorageAccountResponse {
  /// The account name of the Azure Storage Account.
  final pulumi.Input<String> accountName;

  /// The type of the storage.
  /// Expected value is 'StorageAccount'.
  final pulumi.Input<String> storageType;

  /// Creates a new [StorageAccountResponse].
  /// [accountName] The account name of the Azure Storage Account.
  /// [storageType] The type of the storage.
  StorageAccountResponse({
    required this.accountName,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'storageType': storageType,
    };
  }

  factory StorageAccountResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountResponse(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
    );
  }
}
