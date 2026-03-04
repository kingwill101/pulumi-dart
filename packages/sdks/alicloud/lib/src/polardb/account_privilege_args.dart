// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_account_privilege_account_privilege_args_doc}
/// The set of arguments for AccountPrivilege.
/// {@endtemplate}
/// {@macro pulumi_polardb_account_privilege_account_privilege_args_doc}
class AccountPrivilegeArgs {
  /// A specified account name.
  final pulumi.Input<String> accountName;

  /// The privilege of one account access database. Valid values: ["ReadOnly", "ReadWrite"], ["DMLOnly", "DDLOnly"] added since version v1.101.0. Default to "ReadOnly".
  final pulumi.Input<String>? accountPrivilege;

  /// The Id of cluster in which account belongs.
  final pulumi.Input<String> dbClusterId;

  /// List of specified database name.
  final pulumi.Input<List<String>> dbNames;

  /// Creates a new [AccountPrivilegeArgs].
  /// [accountName] A specified account name.
  /// [accountPrivilege] The privilege of one account access database. Valid values: ["ReadOnly", "ReadWrite"], ["DMLOnly", "DDLOnly"] added since version v1.101.0. Default to "ReadOnly".
  /// [dbClusterId] The Id of cluster in which account belongs.
  /// [dbNames] List of specified database name.
  AccountPrivilegeArgs({
    required this.accountName,
    this.accountPrivilege,
    required this.dbClusterId,
    required this.dbNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'accountPrivilege': ?accountPrivilege,
      'dbClusterId': dbClusterId,
      'dbNames': dbNames,
    };
  }

  factory AccountPrivilegeArgs.fromMap(Map<String, dynamic> map) {
    return AccountPrivilegeArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountPrivilege: (() {
        final guardedValue = map['accountPrivilege'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      dbNames: pulumi.Input.fromValue((map['dbNames'] as List).cast<String>()),
    );
  }
}
