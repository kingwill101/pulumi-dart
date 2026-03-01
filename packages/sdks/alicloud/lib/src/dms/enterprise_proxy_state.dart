// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnterpriseProxy resources.
class EnterpriseProxyState {
  /// The ID of the database instance.
  final pulumi.Input<String>? instanceId;
  /// The password of the database account.
  final pulumi.Input<String>? password;
  /// The ID of the tenant.
  final pulumi.Input<String>? tid;
  /// The username of the database account.
  final pulumi.Input<String>? username;

  /// Creates a new [EnterpriseProxyState].
  /// [instanceId] The ID of the database instance.
  /// [password] The password of the database account.
  /// [tid] The ID of the tenant.
  /// [username] The username of the database account.
  EnterpriseProxyState({
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? password,
    pulumi.Output<String>? tid,
    pulumi.Output<String>? username,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      password = pulumi.Input.asOptionalInput<String>(password),
      tid = pulumi.Input.asOptionalInput<String>(tid),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'password': ?password,
      'tid': ?tid,
      'username': ?username,
    };
  }

  factory EnterpriseProxyState.fromMap(Map<String, dynamic> map) {
    return EnterpriseProxyState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      tid: map['tid'] == null ? null : pulumi.Output.create<String>(map['tid'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

