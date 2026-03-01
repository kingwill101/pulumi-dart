// ignore_for_file: unused_element, unnecessary_cast


class GetAccountsAccount {
  /// In Chinese, English letter. May contain Chinese and English characters, lowercase letters, numbers, and underscores (_), the dash (-). Cannot start with http:// and https:// at the beginning. Length is from 2 to 256 characters.
  final String accountDescription;
  /// Account name: lowercase letters, numbers, underscores, lowercase letter; length no more than 16 characters.
  final String accountName;
  /// The Valid Account type: `Normal`, `Super`.
  final String accountType;
  /// The DBCluster id.
  final String dbClusterId;
  /// The ID of the Account. Its value is same as Queue Name.
  final String id;
  /// The status of the resource. Valid Status: `Creating`,`Available`,`Deleting`.
  final String status;

  /// Creates a new [GetAccountsAccount].
  /// [accountDescription] In Chinese, English letter. May contain Chinese and English characters, lowercase letters, numbers, and underscores (_), the dash (-). Cannot start with http:// and https:// at the beginning. Length is from 2 to 256 characters.
  /// [accountName] Account name: lowercase letters, numbers, underscores, lowercase letter; length no more than 16 characters.
  /// [accountType] The Valid Account type: `Normal`, `Super`.
  /// [dbClusterId] The DBCluster id.
  /// [id] The ID of the Account. Its value is same as Queue Name.
  /// [status] The status of the resource. Valid Status: `Creating`,`Available`,`Deleting`.
  GetAccountsAccount({
    required this.accountDescription,
    required this.accountName,
    required this.accountType,
    required this.dbClusterId,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': accountDescription,
      'accountName': accountName,
      'accountType': accountType,
      'dbClusterId': dbClusterId,
      'id': id,
      'status': status,
    };
  }

  factory GetAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetAccountsAccount(
      accountDescription: map['accountDescription'] as String,
      accountName: map['accountName'] as String,
      accountType: map['accountType'] as String,
      dbClusterId: map['dbClusterId'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}

