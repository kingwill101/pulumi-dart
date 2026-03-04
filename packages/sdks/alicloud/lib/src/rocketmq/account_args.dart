// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rocketmq_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_account_account_args_doc}
class AccountArgs {
  /// The status of the account. Valid values: `DISABLE`, `ENABLE`.
  final pulumi.Input<String>? accountStatus;

  /// The instance ID.
  final pulumi.Input<String> instanceId;

  /// The password of the account.
  final pulumi.Input<String> password;

  /// The username of the account.
  final pulumi.Input<String> username;

  /// Creates a new [AccountArgs].
  /// [accountStatus] The status of the account. Valid values: `DISABLE`, `ENABLE`.
  /// [instanceId] The instance ID.
  /// [password] The password of the account.
  /// [username] The username of the account.
  AccountArgs({
    this.accountStatus,
    required this.instanceId,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountStatus': ?accountStatus,
      'instanceId': instanceId,
      'password': password,
      'username': username,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountStatus: (() {
        final guardedValue = map['accountStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
