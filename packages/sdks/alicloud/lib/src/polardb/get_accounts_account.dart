// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_account_database_privilege.dart';

class GetAccountsAccount {
  /// Account description.
  final pulumi.Input<String> accountDescription;
  /// Account lock state, Valid values are `Lock`, `UnLock`.
  final pulumi.Input<String> accountLockState;
  /// Account name.
  final pulumi.Input<String> accountName;
  /// Cluster address type.`Cluster`: the default address of the Cluster.`Primary`: Primary address.`Custom`: Custom cluster addresses.
  final pulumi.Input<String> accountStatus;
  /// Account type, Valid values are `Normal`, `Super`.
  final pulumi.Input<String> accountType;
  /// A list of database privilege. Each element contains the following attributes.
  final pulumi.Input<List<GetAccountsAccountDatabasePrivilege>> databasePrivileges;

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
      'databasePrivileges': pulumi.Input.mapInputValue<List<GetAccountsAccountDatabasePrivilege>, List<Map<String, dynamic>>>(databasePrivileges, (value) => pulumi.Input.encodeList<GetAccountsAccountDatabasePrivilege, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetAccountsAccount(
      accountDescription: pulumi.Input.fromValue(map['accountDescription'] as String),
      accountLockState: pulumi.Input.fromValue(map['accountLockState'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountStatus: pulumi.Input.fromValue(map['accountStatus'] as String),
      accountType: pulumi.Input.fromValue(map['accountType'] as String),
      databasePrivileges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountsAccountDatabasePrivilege>(map['databasePrivileges']!, (value) => GetAccountsAccountDatabasePrivilege.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

