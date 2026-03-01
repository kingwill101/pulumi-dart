// ignore_for_file: unused_element, unnecessary_cast


/// storage resource of type Azure Storage Account.
class StorageAccount {
  /// The account key of the Azure Storage Account.
  final String accountKey;
  /// The account name of the Azure Storage Account.
  final String accountName;
  /// The type of the storage.
  /// Expected value is 'StorageAccount'.
  final String storageType;

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
      accountKey: map['accountKey'] as String,
      accountName: map['accountName'] as String,
      storageType: map['storageType'] as String,
    );
  }
}

