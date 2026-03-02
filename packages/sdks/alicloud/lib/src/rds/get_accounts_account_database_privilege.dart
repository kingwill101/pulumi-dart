// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountsAccountDatabasePrivilege {
  /// The type of permission for the account.
  final pulumi.Input<String> accountPrivilege;
  /// The specific permissions corresponding to the type of account permissions.
  final pulumi.Input<String> accountPrivilegeDetail;
  /// Database name.
  final pulumi.Input<String> dbName;

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
      accountPrivilege: (map['accountPrivilege'] as String).input(),
      accountPrivilegeDetail: (map['accountPrivilegeDetail'] as String).input(),
      dbName: (map['dbName'] as String).input(),
    );
  }
}

