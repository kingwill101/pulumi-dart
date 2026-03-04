// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountsAccountDatabasePrivilege {
  /// Account privilege of database
  final pulumi.Input<String> accountPrivilege;

  /// The account owned database name
  final pulumi.Input<String> dbName;

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

  factory GetAccountsAccountDatabasePrivilege.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAccountsAccountDatabasePrivilege(
      accountPrivilege: pulumi.Input.fromValue(
        map['accountPrivilege'] as String,
      ),
      dbName: pulumi.Input.fromValue(map['dbName'] as String),
    );
  }
}
