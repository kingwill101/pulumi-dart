// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clickhouse_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_clickhouse_account_account_args_doc}
class AccountArgs {
  /// In Chinese, English letter. May contain Chinese and English characters, lowercase letters, numbers, and underscores (_), the dash (-). Cannot start with http:// and https:// at the beginning. Length is from 2 to 256 characters.
  final pulumi.Input<String>? accountDescription;
  /// Account name: lowercase letters, numbers, underscores, lowercase letter; length no more than 16 characters.
  final pulumi.Input<String> accountName;
  /// The account password: uppercase letters, lowercase letters, lowercase letters, numbers, and special characters (special character! #$%^& author (s):_+-=) in a length of 8-32 bit.
  final pulumi.Input<String> accountPassword;
  /// The list of databases to which you want to grant permissions. Separate databases with commas (,).
  final pulumi.Input<String>? allowDatabases;
  /// The list of dictionaries to which you want to grant permissions. Separate dictionaries with commas (,).
  final pulumi.Input<String>? allowDictionaries;
  /// The db cluster id.
  final pulumi.Input<String> dbClusterId;
  /// Specifies whether to grant DDL permissions to the database account. Valid values: `true` and `false`.
  final pulumi.Input<bool>? ddlAuthority;
  /// Specifies whether to grant DML permissions to the database account. Valid values: `all` and `readOnly,modify`.
  final pulumi.Input<String>? dmlAuthority;
  /// The list of all databases. Separate databases with commas (,). Field 'total_databases' has been deprecated from provider version 1.223.1.
  final pulumi.Input<String>? totalDatabases;
  /// The list of all dictionaries. Separate dictionaries with commas (,). Field 'total_dictionaries' has been deprecated from provider version 1.223.1.
  final pulumi.Input<String>? totalDictionaries;
  /// The type of the database account. Valid values: `Normal` or `Super`.
  final pulumi.Input<String>? type;

  /// Creates a new [AccountArgs].
  /// [accountDescription] In Chinese, English letter. May contain Chinese and English characters, lowercase letters, numbers, and underscores (_), the dash (-). Cannot start with http:// and https:// at the beginning. Length is from 2 to 256 characters.
  /// [accountName] Account name: lowercase letters, numbers, underscores, lowercase letter; length no more than 16 characters.
  /// [accountPassword] The account password: uppercase letters, lowercase letters, lowercase letters, numbers, and special characters (special character! #$%^& author (s):_+-=) in a length of 8-32 bit.
  /// [allowDatabases] The list of databases to which you want to grant permissions. Separate databases with commas (,).
  /// [allowDictionaries] The list of dictionaries to which you want to grant permissions. Separate dictionaries with commas (,).
  /// [dbClusterId] The db cluster id.
  /// [ddlAuthority] Specifies whether to grant DDL permissions to the database account. Valid values: `true` and `false`.
  /// [dmlAuthority] Specifies whether to grant DML permissions to the database account. Valid values: `all` and `readOnly,modify`.
  /// [totalDatabases] The list of all databases. Separate databases with commas (,). Field 'total_databases' has been deprecated from provider version 1.223.1.
  /// [totalDictionaries] The list of all dictionaries. Separate dictionaries with commas (,). Field 'total_dictionaries' has been deprecated from provider version 1.223.1.
  /// [type] The type of the database account. Valid values: `Normal` or `Super`.
  AccountArgs({
    this.accountDescription,
    required this.accountName,
    required this.accountPassword,
    this.allowDatabases,
    this.allowDictionaries,
    required this.dbClusterId,
    this.ddlAuthority,
    this.dmlAuthority,
    this.totalDatabases,
    this.totalDictionaries,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': ?accountDescription,
      'accountName': accountName,
      'accountPassword': accountPassword,
      'allowDatabases': ?allowDatabases,
      'allowDictionaries': ?allowDictionaries,
      'dbClusterId': dbClusterId,
      'ddlAuthority': ?ddlAuthority,
      'dmlAuthority': ?dmlAuthority,
      'totalDatabases': ?totalDatabases,
      'totalDictionaries': ?totalDictionaries,
      'type': ?type,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountDescription: map['accountDescription'] == null ? null : (map['accountDescription'] as String).input(),
      accountName: (map['accountName'] as String).input(),
      accountPassword: (map['accountPassword'] as String).input(),
      allowDatabases: map['allowDatabases'] == null ? null : (map['allowDatabases'] as String).input(),
      allowDictionaries: map['allowDictionaries'] == null ? null : (map['allowDictionaries'] as String).input(),
      dbClusterId: (map['dbClusterId'] as String).input(),
      ddlAuthority: map['ddlAuthority'] == null ? null : (map['ddlAuthority'] as bool).input(),
      dmlAuthority: map['dmlAuthority'] == null ? null : (map['dmlAuthority'] as String).input(),
      totalDatabases: map['totalDatabases'] == null ? null : (map['totalDatabases'] as String).input(),
      totalDictionaries: map['totalDictionaries'] == null ? null : (map['totalDictionaries'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

