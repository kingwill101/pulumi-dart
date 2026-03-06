// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountsAccount {
  /// The description of the account.
  final pulumi.Input<String> accountDescription;
  /// The name of the account.
  final pulumi.Input<String> accountName;
  /// The role of the account. Valid values: `db`, `cs`, `mongos`, `logic`, `normal`.
  final pulumi.Input<String> characterType;
  /// The ID of the Account. The value formats as `&lt;instance_id&gt;:&lt;account_name&gt;`.
  final pulumi.Input<String> id;
  /// The id of the instance to which the account belongs.
  final pulumi.Input<String> instanceId;
  /// The status of the account. Valid values: `Unavailable`, `Available`.
  final pulumi.Input<String> status;

  /// Creates a new [GetAccountsAccount].
  /// [accountDescription] The description of the account.
  /// [accountName] The name of the account.
  /// [characterType] The role of the account. Valid values: `db`, `cs`, `mongos`, `logic`, `normal`.
  /// [id] The ID of the Account. The value formats as `&lt;instance_id&gt;:&lt;account_name&gt;`.
  /// [instanceId] The id of the instance to which the account belongs.
  /// [status] The status of the account. Valid values: `Unavailable`, `Available`.
  const GetAccountsAccount({
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
      accountDescription: pulumi.Input.fromValue(map['accountDescription'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      characterType: pulumi.Input.fromValue(map['characterType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

