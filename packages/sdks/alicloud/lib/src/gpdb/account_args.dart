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
    pulumi.Output<String>? accountDescription,
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> accountPassword,
    pulumi.Output<String>? accountType,
    pulumi.Output<String>? databaseName,
    required pulumi.Output<String> dbInstanceId,
  }) :
      accountDescription = pulumi.Input.asOptionalInput<String>(accountDescription),
      accountName = pulumi.Input.asInput<String>(accountName),
      accountPassword = pulumi.Input.asInput<String>(accountPassword),
      accountType = pulumi.Input.asOptionalInput<String>(accountType),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId);

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
      accountDescription: map['accountDescription'] == null ? null : pulumi.Output.create<String>(map['accountDescription'] as String),
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      accountPassword: pulumi.Output.create<String>(map['accountPassword'] as String),
      accountType: map['accountType'] == null ? null : pulumi.Output.create<String>(map['accountType'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
    );
  }
}

