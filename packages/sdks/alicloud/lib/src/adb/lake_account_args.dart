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
      'accountPrivileges':
          ?pulumi.Input.mapOptionalInputValue<
            List<LakeAccountAccountPrivilege>,
            List<Map<String, dynamic>>
          >(
            accountPrivileges,
            (value) =>
                pulumi.Input.encodeList<
                  LakeAccountAccountPrivilege,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'accountType': ?accountType,
      'dbClusterId': dbClusterId,
    };
  }

  factory LakeAccountArgs.fromMap(Map<String, dynamic> map) {
    return LakeAccountArgs(
      accountDescription: (() {
        final guardedValue = map['accountDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountPassword: pulumi.Input.fromValue(map['accountPassword'] as String),
      accountPrivileges: (() {
        final guardedValue = map['accountPrivileges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LakeAccountAccountPrivilege>(
            guardedValue,
            (value) => LakeAccountAccountPrivilege.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      accountType: (() {
        final guardedValue = map['accountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
    );
  }
}
