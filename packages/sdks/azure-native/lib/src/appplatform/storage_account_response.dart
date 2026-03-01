// ignore_for_file: unused_element, unnecessary_cast


/// storage resource of type Azure Storage Account.
class StorageAccountResponse {
  /// The account name of the Azure Storage Account.
  final String accountName;
  /// The type of the storage.
  /// Expected value is 'StorageAccount'.
  final String storageType;

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
      accountName: map['accountName'] as String,
      storageType: map['storageType'] as String,
    );
  }
}

