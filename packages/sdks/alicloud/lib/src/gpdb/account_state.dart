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
    pulumi.Output<String>? accountDescription,
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? accountPassword,
    pulumi.Output<String>? accountType,
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? status,
  }) :
      accountDescription = pulumi.Input.asOptionalInput<String>(accountDescription),
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      accountType = pulumi.Input.asOptionalInput<String>(accountType),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      accountDescription: map['accountDescription'] == null ? null : pulumi.Output.create<String>(map['accountDescription'] as String),
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      accountType: map['accountType'] == null ? null : pulumi.Output.create<String>(map['accountType'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

