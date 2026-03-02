// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// The description of the account.
  final pulumi.Input<String>? accountDescription;
  /// The account name.
  final pulumi.Input<String>? accountName;
  /// AccountPassword
  final pulumi.Input<String>? accountPassword;
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
  final pulumi.Input<String>? dbInstanceId;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [AccountState].
  /// [accountDescription] The description of the account.
  /// [accountName] The account name.
  /// [accountPassword] AccountPassword
  /// [accountType] Account type. The value range is as follows:
  /// [databaseName] Database name, with the following restrictions:
  /// [dbInstanceId] The Adb pg instance ID.
  /// [status] The status of the resource
  AccountState({
    this.accountDescription,
    this.accountName,
    this.accountPassword,
    this.accountType,
    this.databaseName,
    this.dbInstanceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': ?accountDescription,
      'accountName': ?accountName,
      'accountPassword': ?accountPassword,
      'accountType': ?accountType,
      'databaseName': ?databaseName,
      'dbInstanceId': ?dbInstanceId,
      'status': ?status,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      accountDescription: map['accountDescription'] == null ? null : (map['accountDescription']! as String).input(),
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      accountPassword: map['accountPassword'] == null ? null : (map['accountPassword']! as String).input(),
      accountType: map['accountType'] == null ? null : (map['accountType']! as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

