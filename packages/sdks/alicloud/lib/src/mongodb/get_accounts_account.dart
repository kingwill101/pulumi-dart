// ignore_for_file: unused_element, unnecessary_cast


class GetAccountsAccount {
  /// The description of the account.
  final String accountDescription;
  /// The name of the account.
  final String accountName;
  /// The role of the account. Valid values: `db`, `cs`, `mongos`, `logic`, `normal`.
  final String characterType;
  /// The ID of the Account. The value formats as `<instance_id>:<account_name>`.
  final String id;
  /// The id of the instance to which the account belongs.
  final String instanceId;
  /// The status of the account. Valid values: `Unavailable`, `Available`.
  final String status;

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
      accountDescription: map['accountDescription'] as String,
      accountName: map['accountName'] as String,
      characterType: map['characterType'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      status: map['status'] as String,
    );
  }
}

