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
    this.instanceId,
    this.password,
    this.tid,
    this.username,
  });

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
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      tid: map['tid'] == null ? null : (map['tid']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

