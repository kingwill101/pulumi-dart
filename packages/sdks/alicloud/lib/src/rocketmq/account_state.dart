// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// The status of the account. Valid values: `DISABLE`, `ENABLE`.
  final pulumi.Input<String>? accountStatus;
  /// The instance ID.
  final pulumi.Input<String>? instanceId;
  /// The password of the account.
  final pulumi.Input<String>? password;
  /// The username of the account.
  final pulumi.Input<String>? username;

  /// Creates a new [AccountState].
  /// [accountStatus] The status of the account. Valid values: `DISABLE`, `ENABLE`.
  /// [instanceId] The instance ID.
  /// [password] The password of the account.
  /// [username] The username of the account.
  AccountState({
    this.accountStatus,
    this.instanceId,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountStatus': ?accountStatus,
      'instanceId': ?instanceId,
      'password': ?password,
      'username': ?username,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      accountStatus: map['accountStatus'] == null ? null : (map['accountStatus'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

