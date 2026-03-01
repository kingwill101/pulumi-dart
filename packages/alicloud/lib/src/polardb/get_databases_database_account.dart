// ignore_for_file: unused_element, unnecessary_cast


class GetDatabasesDatabaseAccount {
  /// Account name.
  final String accountName;
  /// Account status.
  final String accountStatus;
  /// The privilege status of account.
  final String privilegeStatus;

  /// Creates a new [GetDatabasesDatabaseAccount].
  /// [accountName] Account name.
  /// [accountStatus] Account status.
  /// [privilegeStatus] The privilege status of account.
  GetDatabasesDatabaseAccount({
    required this.accountName,
    required this.accountStatus,
    required this.privilegeStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'accountStatus': accountStatus,
      'privilegeStatus': privilegeStatus,
    };
  }

  factory GetDatabasesDatabaseAccount.fromMap(Map<String, dynamic> map) {
    return GetDatabasesDatabaseAccount(
      accountName: map['accountName'] as String,
      accountStatus: map['accountStatus'] as String,
      privilegeStatus: map['privilegeStatus'] as String,
    );
  }
}

