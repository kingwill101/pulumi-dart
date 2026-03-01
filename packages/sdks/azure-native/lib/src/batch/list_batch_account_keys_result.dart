// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listBatchAccountKeys.
class ListBatchAccountKeysResult {
  /// The Batch account name.
  final String accountName;
  /// The primary key associated with the account.
  final String primary;
  /// The secondary key associated with the account.
  final String secondary;

  /// Creates a new [ListBatchAccountKeysResult].
  /// [accountName] The Batch account name.
  /// [primary] The primary key associated with the account.
  /// [secondary] The secondary key associated with the account.
  ListBatchAccountKeysResult({
    required this.accountName,
    required this.primary,
    required this.secondary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'primary': primary,
      'secondary': secondary,
    };
  }

  factory ListBatchAccountKeysResult.fromMap(Map<String, dynamic> map) {
    return ListBatchAccountKeysResult(
      accountName: map['accountName'] as String,
      primary: map['primary'] as String,
      secondary: map['secondary'] as String,
    );
  }
}

