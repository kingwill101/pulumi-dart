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
    pulumi.Output<String>? accountStatus,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? password,
    pulumi.Output<String>? username,
  }) :
      accountStatus = pulumi.Input.asOptionalInput<String>(accountStatus),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      password = pulumi.Input.asOptionalInput<String>(password),
      username = pulumi.Input.asOptionalInput<String>(username);

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
      accountStatus: map['accountStatus'] == null ? null : pulumi.Output.create<String>(map['accountStatus'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

