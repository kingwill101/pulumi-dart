// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_gpdb_account_account_args_doc}
class AccountArgs {
  /// The description of the account.
  final pulumi.Input<String>? accountDescription;

  /// The account name.
  final pulumi.Input<String> accountName;

  /// AccountPassword
  final pulumi.Input<String> accountPassword;

  /// Account type. The value range is as follows:
  ///
  /// Normal: Normal account number.
  ///
  /// Super: a high-privilege account.
  final pulumi.Input<String>? accountType;

  /// Database name, with the following restrictions:
  /// - Can only contain letters, numbers and underscores.
  /// - Must start with a letter.
  /// - Length cannot exceed 63 characters.
  final pulumi.Input<String>? databaseName;

  /// The Adb pg instance ID.
  final pulumi.Input<String> dbInstanceId;

  /// Creates a new [AccountArgs].
  /// [accountDescription] The description of the account.
  /// [accountName] The account name.
  /// [accountPassword] AccountPassword
  /// [accountType] Account type. The value range is as follows:
  /// [databaseName] Database name, with the following restrictions:
  /// [dbInstanceId] The Adb pg instance ID.
  AccountArgs({
    this.accountDescription,
    required this.accountName,
    required this.accountPassword,
    this.accountType,
    this.databaseName,
    required this.dbInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': ?accountDescription,
      'accountName': accountName,
      'accountPassword': accountPassword,
      'accountType': ?accountType,
      'databaseName': ?databaseName,
      'dbInstanceId': dbInstanceId,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountDescription: (() {
        final guardedValue = map['accountDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountPassword: pulumi.Input.fromValue(map['accountPassword'] as String),
      accountType: (() {
        final guardedValue = map['accountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
    );
  }
}
