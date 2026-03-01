// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_account_privilege_account_privilege_args_doc}
/// The set of arguments for AccountPrivilege.
/// {@endtemplate}
/// {@macro pulumi_rds_account_privilege_account_privilege_args_doc}
class AccountPrivilegeArgs {
  /// A specified account name.
  final pulumi.Input<String> accountName;
  /// List of specified database name.
  final pulumi.Input<List<String>> dbNames;
  /// The Id of instance in which account belongs.
  final pulumi.Input<String> instanceId;
  /// The privilege of one account access database. Valid values:
  /// - ReadOnly: This value is only for MySQL, MariaDB and SQL Server
  /// - ReadWrite: This value is only for MySQL, MariaDB and SQL Server
  /// - DDLOnly: (Available in 1.64.0+) This value is only for MySQL and MariaDB
  /// - DMLOnly: (Available in 1.64.0+) This value is only for MySQL and MariaDB
  /// - DBOwner: (Available in 1.64.0+) This value is only for SQL Server and PostgreSQL.
  /// Default to "ReadOnly".
  final pulumi.Input<String>? privilege;

  /// Creates a new [AccountPrivilegeArgs].
  /// [accountName] A specified account name.
  /// [dbNames] List of specified database name.
  /// [instanceId] The Id of instance in which account belongs.
  /// [privilege] The privilege of one account access database. Valid values:
  AccountPrivilegeArgs({
    required String accountName,
    required List<String> dbNames,
    required String instanceId,
    String? privilege,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dbNames = pulumi.Input.asInput<List<String>>(dbNames),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      privilege = pulumi.Input.asOptionalInput<String>(privilege);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dbNames': dbNames,
      'instanceId': instanceId,
      'privilege': ?privilege,
    };
  }

  factory AccountPrivilegeArgs.fromMap(Map<String, dynamic> map) {
    return AccountPrivilegeArgs(
      accountName: map['accountName'] as String,
      dbNames: (map['dbNames'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      privilege: map['privilege'] == null ? null : map['privilege'] as String,
    );
  }
}

