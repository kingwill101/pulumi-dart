// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountsAccount {
  /// The name of the account.
  final pulumi.Input<String> accountName;
  /// The privilege of account access database.
  final pulumi.Input<String> accountPrivilege;
  /// Privilege type of account.
  final pulumi.Input<String> accountType;
  /// The description of account.
  final pulumi.Input<String> description;
  /// The ID of the Account.
  final pulumi.Input<String> id;
  /// The Id of instance in which account belongs.
  final pulumi.Input<String> instanceId;
  /// The status of account.
  final pulumi.Input<String> status;

  /// Creates a new [GetAccountsAccount].
  /// [accountName] The name of the account.
  /// [accountPrivilege] The privilege of account access database.
  /// [accountType] Privilege type of account.
  /// [description] The description of account.
  /// [id] The ID of the Account.
  /// [instanceId] The Id of instance in which account belongs.
  /// [status] The status of account.
  GetAccountsAccount({
    required this.accountName,
    required this.accountPrivilege,
    required this.accountType,
    required this.description,
    required this.id,
    required this.instanceId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'accountPrivilege': accountPrivilege,
      'accountType': accountType,
      'description': description,
      'id': id,
      'instanceId': instanceId,
      'status': status,
    };
  }

  factory GetAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetAccountsAccount(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountPrivilege: pulumi.Input.fromValue(map['accountPrivilege'] as String),
      accountType: pulumi.Input.fromValue(map['accountType'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

