// ignore_for_file: unused_element, unnecessary_cast


class GetAccountsAccount {
  /// The name of the account.
  final String accountName;
  /// The privilege of account access database.
  final String accountPrivilege;
  /// Privilege type of account.
  final String accountType;
  /// The description of account.
  final String description;
  /// The ID of the Account.
  final String id;
  /// The Id of instance in which account belongs.
  final String instanceId;
  /// The status of account.
  final String status;

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
      accountName: map['accountName'] as String,
      accountPrivilege: map['accountPrivilege'] as String,
      accountType: map['accountType'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      status: map['status'] as String,
    );
  }
}

