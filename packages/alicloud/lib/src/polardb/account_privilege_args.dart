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
    required String accountName,
    String? accountPrivilege,
    required String dbClusterId,
    required List<String> dbNames,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      accountPrivilege = pulumi.Input.asOptionalInput<String>(accountPrivilege),
      dbClusterId = pulumi.Input.asInput<String>(dbClusterId),
      dbNames = pulumi.Input.asInput<List<String>>(dbNames);

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
      accountName: map['accountName'] as String,
      accountPrivilege: map['accountPrivilege'] == null ? null : map['accountPrivilege'] as String,
      dbClusterId: map['dbClusterId'] as String,
      dbNames: (map['dbNames'] as List).cast<String>(),
    );
  }
}

