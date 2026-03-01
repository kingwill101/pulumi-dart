// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_account_database_privilege.dart';

class GetAccountsAccount {
  /// Account description.
  final String accountDescription;
  /// Account lock state, Valid values are `Lock`, `UnLock`.
  final String accountLockState;
  /// Account name.
  final String accountName;
  /// Cluster address type.`Cluster`: the default address of the Cluster.`Primary`: Primary address.`Custom`: Custom cluster addresses.
  final String accountStatus;
  /// Account type, Valid values are `Normal`, `Super`.
  final String accountType;
  /// A list of database privilege. Each element contains the following attributes.
  final List<GetAccountsAccountDatabasePrivilege> databasePrivileges;

  /// Creates a new [GetAccountsAccount].
  /// [accountDescription] Account description.
  /// [accountLockState] Account lock state, Valid values are `Lock`, `UnLock`.
  /// [accountName] Account name.
  /// [accountStatus] Cluster address type.`Cluster`: the default address of the Cluster.`Primary`: Primary address.`Custom`: Custom cluster addresses.
  /// [accountType] Account type, Valid values are `Normal`, `Super`.
  /// [databasePrivileges] A list of database privilege. Each element contains the following attributes.
  GetAccountsAccount({
    required this.accountDescription,
    required this.accountLockState,
    required this.accountName,
    required this.accountStatus,
    required this.accountType,
    required this.databasePrivileges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': accountDescription,
      'accountLockState': accountLockState,
      'accountName': accountName,
      'accountStatus': accountStatus,
      'accountType': accountType,
      'databasePrivileges': pulumi.Input.encodeList<GetAccountsAccountDatabasePrivilege, Map<String, dynamic>>(databasePrivileges, (value) => value.toMap()),
    };
  }

  factory GetAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetAccountsAccount(
      accountDescription: map['accountDescription'] as String,
      accountLockState: map['accountLockState'] as String,
      accountName: map['accountName'] as String,
      accountStatus: map['accountStatus'] as String,
      accountType: map['accountType'] as String,
      databasePrivileges: pulumi.Input.decodeList<GetAccountsAccountDatabasePrivilege>(map['databasePrivileges'], (value) => GetAccountsAccountDatabasePrivilege.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

