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
      accountName: (map['accountName'] as String).input(),
      accountPrivilege: (map['accountPrivilege'] as String).input(),
      accountType: (map['accountType'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

