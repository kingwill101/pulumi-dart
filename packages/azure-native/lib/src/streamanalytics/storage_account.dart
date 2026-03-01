// ignore_for_file: unused_element, unnecessary_cast


/// The properties that are associated with an Azure Storage account
class StorageAccount {
  /// The account key for the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  final String? accountKey;
  /// The name of the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  final String? accountName;

  /// Creates a new [StorageAccount].
  /// [accountKey] The account key for the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  /// [accountName] The name of the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  StorageAccount({
    this.accountKey,
    this.accountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'accountName': ?accountName,
    };
  }

  factory StorageAccount.fromMap(Map<String, dynamic> map) {
    return StorageAccount(
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
    );
  }
}

