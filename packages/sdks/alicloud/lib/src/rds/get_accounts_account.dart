// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_account_database_privilege.dart';

class GetAccountsAccount {
  /// Database description.
  final pulumi.Input<String> accountDescription;
  /// Name of database account.
  final pulumi.Input<String> accountName;
  /// Privilege type of account.
  final pulumi.Input<String> accountType;
  /// A list of database permissions the account has.
  final pulumi.Input<List<GetAccountsAccountDatabasePrivilege>> databasePrivileges;
  /// The ID of the Account.
  final pulumi.Input<String> id;
  /// Whether the maximum number of databases managed by the account is exceeded.
  final pulumi.Input<String> privExceeded;
  /// The status of the resource.
  final pulumi.Input<String> status;

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
      'databasePrivileges': pulumi.Input.mapInputValue<List<GetAccountsAccountDatabasePrivilege>, List<Map<String, dynamic>>>(databasePrivileges, (value) => pulumi.Input.encodeList<GetAccountsAccountDatabasePrivilege, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'privExceeded': privExceeded,
      'status': status,
    };
  }

  factory GetAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetAccountsAccount(
      accountDescription: pulumi.Input.fromValue(map['accountDescription'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountType: pulumi.Input.fromValue(map['accountType'] as String),
      databasePrivileges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountsAccountDatabasePrivilege>(map['databasePrivileges']!, (value) => GetAccountsAccountDatabasePrivilege.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      privExceeded: pulumi.Input.fromValue(map['privExceeded'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

