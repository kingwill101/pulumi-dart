// ignore_for_file: unused_element, unnecessary_cast


class JobJobStorageAccount {
  /// The account key for the Azure storage account.
  final String? accountKey;
  /// The name of the Azure storage account.
  final String accountName;
  /// The authentication mode of the storage account. Possible values are `ConnectionString` and `Msi`. Defaults to `ConnectionString`.
  final String? authenticationMode;

  /// Creates a new [JobJobStorageAccount].
  /// [accountKey] The account key for the Azure storage account.
  /// [accountName] The name of the Azure storage account.
  /// [authenticationMode] The authentication mode of the storage account. Possible values are `ConnectionString` and `Msi`. Defaults to `ConnectionString`.
  JobJobStorageAccount({
    this.accountKey,
    required this.accountName,
    this.authenticationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'accountName': accountName,
      'authenticationMode': ?authenticationMode,
    };
  }

  factory JobJobStorageAccount.fromMap(Map<String, dynamic> map) {
    return JobJobStorageAccount(
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      accountName: map['accountName'] as String,
      authenticationMode: map['authenticationMode'] == null ? null : map['authenticationMode'] as String,
    );
  }
}

