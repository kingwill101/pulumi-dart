// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_account_database_privilege.dart';

class GetAccountsAccount {
  /// Database description.
  final String accountDescription;
  /// Name of database account.
  final String accountName;
  /// Privilege type of account.
  final String accountType;
  /// A list of database permissions the account has.
  final List<GetAccountsAccountDatabasePrivilege> databasePrivileges;
  /// The ID of the Account.
  final String id;
  /// Whether the maximum number of databases managed by the account is exceeded.
  final String privExceeded;
  /// The status of the resource.
  final String status;

  /// Creates a new [GetAccountsAccount].
  /// [accountDescription] Database description.
  /// [accountName] Name of database account.
  /// [accountType] Privilege type of account.
  /// [databasePrivileges] A list of database permissions the account has.
  /// [id] The ID of the Account.
  /// [privExceeded] Whether the maximum number of databases managed by the account is exceeded.
  /// [status] The status of the resource.
  GetAccountsAccount({
    required this.accountDescription,
    required this.accountName,
    required this.accountType,
    required this.databasePrivileges,
    required this.id,
    required this.privExceeded,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': accountDescription,
      'accountName': accountName,
      'accountType': accountType,
      'databasePrivileges': pulumi.Input.encodeList<GetAccountsAccountDatabasePrivilege, Map<String, dynamic>>(databasePrivileges, (value) => value.toMap()),
      'id': id,
      'privExceeded': privExceeded,
      'status': status,
    };
  }

  factory GetAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetAccountsAccount(
      accountDescription: map['accountDescription'] as String,
      accountName: map['accountName'] as String,
      accountType: map['accountType'] as String,
      databasePrivileges: pulumi.Input.decodeList<GetAccountsAccountDatabasePrivilege>(map['databasePrivileges'], (value) => GetAccountsAccountDatabasePrivilege.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      privExceeded: map['privExceeded'] as String,
      status: map['status'] as String,
    );
  }
}

