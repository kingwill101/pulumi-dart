// ignore_for_file: unused_element, unnecessary_cast


class GetAccountsAccountDatabasePrivilege {
  /// Account privilege of database
  final String accountPrivilege;
  /// The account owned database name
  final String dbName;

  /// Creates a new [GetAccountsAccountDatabasePrivilege].
  /// [accountPrivilege] Account privilege of database
  /// [dbName] The account owned database name
  GetAccountsAccountDatabasePrivilege({
    required this.accountPrivilege,
    required this.dbName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountPrivilege': accountPrivilege,
      'dbName': dbName,
    };
  }

  factory GetAccountsAccountDatabasePrivilege.fromMap(Map<String, dynamic> map) {
    return GetAccountsAccountDatabasePrivilege(
      accountPrivilege: map['accountPrivilege'] as String,
      dbName: map['dbName'] as String,
    );
  }
}

