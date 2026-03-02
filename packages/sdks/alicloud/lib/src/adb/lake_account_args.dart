// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lake_account_account_privilege.dart';

/// {@template pulumi_adb_lake_account_lake_account_args_doc}
/// The set of arguments for LakeAccount.
/// {@endtemplate}
/// {@macro pulumi_adb_lake_account_lake_account_args_doc}
class LakeAccountArgs {
  /// The description of the account.
  final pulumi.Input<String>? accountDescription;
  /// The name of the account.
  final pulumi.Input<String> accountName;
  /// AccountPassword.
  final pulumi.Input<String> accountPassword;
  /// List of permissions granted. See `account_privileges` below.
  final pulumi.Input<List<LakeAccountAccountPrivilege>>? accountPrivileges;
  /// The type of the account.
  final pulumi.Input<String>? accountType;
  /// The DBCluster ID.
  final pulumi.Input<String> dbClusterId;

  /// Creates a new [LakeAccountArgs].
  /// [accountDescription] The description of the account.
  /// [accountName] The name of the account.
  /// [accountPassword] AccountPassword.
  /// [accountPrivileges] List of permissions granted. See `account_privileges` below.
  /// [accountType] The type of the account.
  /// [dbClusterId] The DBCluster ID.
  LakeAccountArgs({
    this.accountDescription,
    required this.accountName,
    required this.accountPassword,
    this.accountPrivileges,
    this.accountType,
    required this.dbClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': ?accountDescription,
      'accountName': accountName,
      'accountPassword': accountPassword,
      'accountPrivileges': ?pulumi.Input.mapOptionalInputValue<List<LakeAccountAccountPrivilege>, List<Map<String, dynamic>>>(accountPrivileges, (value) => pulumi.Input.encodeList<LakeAccountAccountPrivilege, Map<String, dynamic>>(value, (value) => value.toMap())),
      'accountType': ?accountType,
      'dbClusterId': dbClusterId,
    };
  }

  factory LakeAccountArgs.fromMap(Map<String, dynamic> map) {
    return LakeAccountArgs(
      accountDescription: map['accountDescription'] == null ? null : (map['accountDescription']! as String).input(),
      accountName: (map['accountName'] as String).input(),
      accountPassword: (map['accountPassword'] as String).input(),
      accountPrivileges: map['accountPrivileges'] == null ? null : (pulumi.Input.decodeList<LakeAccountAccountPrivilege>(map['accountPrivileges']!, (value) => LakeAccountAccountPrivilege.fromMap((value as Map).cast<String, dynamic>()))).input(),
      accountType: map['accountType'] == null ? null : (map['accountType']! as String).input(),
      dbClusterId: (map['dbClusterId'] as String).input(),
    );
  }
}

