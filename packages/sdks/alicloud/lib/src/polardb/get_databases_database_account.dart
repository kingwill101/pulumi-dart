// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabasesDatabaseAccount {
  /// Account name.
  final pulumi.Input<String> accountName;

  /// Account status.
  final pulumi.Input<String> accountStatus;

  /// The privilege status of account.
  final pulumi.Input<String> privilegeStatus;

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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountStatus: pulumi.Input.fromValue(map['accountStatus'] as String),
      privilegeStatus: pulumi.Input.fromValue(map['privilegeStatus'] as String),
    );
  }
}
