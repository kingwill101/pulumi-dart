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
  const AccountState({
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
      accountStatus: (() { final guardedValue = map['accountStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

