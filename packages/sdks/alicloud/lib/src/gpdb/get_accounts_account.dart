// ignore_for_file: unused_element, unnecessary_cast


class GetAccountsAccount {
  /// The description of the account.
  final String accountDescription;
  /// The name of the account.
  final String accountName;
  /// The ID of the instance.
  final String dbInstanceId;
  /// The ID of the Account. Its value is same as Queue Name.
  final String id;
  /// The status of the account. Valid values: `Active`, `Creating` and `Deleting`.
  final String status;

  /// Creates a new [GetAccountsAccount].
  /// [accountDescription] The description of the account.
  /// [accountName] The name of the account.
  /// [dbInstanceId] The ID of the instance.
  /// [id] The ID of the Account. Its value is same as Queue Name.
  /// [status] The status of the account. Valid values: `Active`, `Creating` and `Deleting`.
  GetAccountsAccount({
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
      accountDescription: map['accountDescription'] as String,
      accountName: map['accountName'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}

