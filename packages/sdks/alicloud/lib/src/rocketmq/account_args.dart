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
    pulumi.Output<String>? accountStatus,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> password,
    required pulumi.Output<String> username,
  }) :
      accountStatus = pulumi.Input.asOptionalInput<String>(accountStatus),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      password = pulumi.Input.asInput<String>(password),
      username = pulumi.Input.asInput<String>(username);

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
      accountStatus: map['accountStatus'] == null ? null : pulumi.Output.create<String>(map['accountStatus'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      password: pulumi.Output.create<String>(map['password'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

