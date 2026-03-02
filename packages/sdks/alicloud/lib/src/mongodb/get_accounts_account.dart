// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountsAccount {
  /// The description of the account.
  final pulumi.Input<String> accountDescription;
  /// The name of the account.
  final pulumi.Input<String> accountName;
  /// The role of the account. Valid values: `db`, `cs`, `mongos`, `logic`, `normal`.
  final pulumi.Input<String> characterType;
  /// The ID of the Account. The value formats as `<instance_id>:<account_name>`.
  final pulumi.Input<String> id;
  /// The id of the instance to which the account belongs.
  final pulumi.Input<String> instanceId;
  /// The status of the account. Valid values: `Unavailable`, `Available`.
  final pulumi.Input<String> status;

  /// Creates a new [GetAccountsAccount].
  /// [accountDescription] The description of the account.
  /// [accountName] The name of the account.
  /// [characterType] The role of the account. Valid values: `db`, `cs`, `mongos`, `logic`, `normal`.
  /// [id] The ID of the Account. The value formats as `<instance_id>:<account_name>`.
  /// [instanceId] The id of the instance to which the account belongs.
  /// [status] The status of the account. Valid values: `Unavailable`, `Available`.
  GetAccountsAccount({
    required this.accountDescription,
    required this.accountName,
    required this.characterType,
    required this.id,
    required this.instanceId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDescription': accountDescription,
      'accountName': accountName,
      'characterType': characterType,
      'id': id,
      'instanceId': instanceId,
      'status': status,
    };
  }

  factory GetAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetAccountsAccount(
      accountDescription: (map['accountDescription'] as String).input(),
      accountName: (map['accountName'] as String).input(),
      characterType: (map['characterType'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

