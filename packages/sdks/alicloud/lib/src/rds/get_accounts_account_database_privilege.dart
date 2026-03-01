// ignore_for_file: unused_element, unnecessary_cast


class GetAccountsAccountDatabasePrivilege {
  /// The type of permission for the account.
  final String accountPrivilege;
  /// The specific permissions corresponding to the type of account permissions.
  final String accountPrivilegeDetail;
  /// Database name.
  final String dbName;

  /// Creates a new [GetAccountsAccountDatabasePrivilege].
  /// [accountPrivilege] The type of permission for the account.
  /// [accountPrivilegeDetail] The specific permissions corresponding to the type of account permissions.
  /// [dbName] Database name.
  GetAccountsAccountDatabasePrivilege({
    required this.accountPrivilege,
    required this.accountPrivilegeDetail,
    required this.dbName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountPrivilege': accountPrivilege,
      'accountPrivilegeDetail': accountPrivilegeDetail,
      'dbName': dbName,
    };
  }

  factory GetAccountsAccountDatabasePrivilege.fromMap(Map<String, dynamic> map) {
    return GetAccountsAccountDatabasePrivilege(
      accountPrivilege: map['accountPrivilege'] as String,
      accountPrivilegeDetail: map['accountPrivilegeDetail'] as String,
      dbName: map['dbName'] as String,
    );
  }
}

