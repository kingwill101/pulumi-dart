// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountsAccount {
  /// The description of the account.
  final pulumi.Input<String> accountDescription;
  /// The name of the account.
  final pulumi.Input<String> accountName;
  /// The ID of the instance.
  final pulumi.Input<String> dbInstanceId;
  /// The ID of the Account. Its value is same as Queue Name.
  final pulumi.Input<String> id;
  /// The status of the account. Valid values: `Active`, `Creating` and `Deleting`.
  final pulumi.Input<String> status;

  /// Creates a new [GetAccountsAccount].
  /// [accountDescription] The description of the account.
  /// [accountName] The name of the account.
  /// [dbInstanceId] The ID of the instance.
  /// [id] The ID of the Account. Its value is same as Queue Name.
  /// [status] The status of the account. Valid values: `Active`, `Creating` and `Deleting`.
  const GetAccountsAccount({
    required this.accountDescription,
    required this.accountName,
    required this.dbInstanceId,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': accountDescription,
      'accountName': accountName,
      'dbInstanceId': dbInstanceId,
      'id': id,
      'status': status,
    };
  }

  factory GetAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetAccountsAccount(
      accountDescription: pulumi.Input.fromValue(map['accountDescription'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

