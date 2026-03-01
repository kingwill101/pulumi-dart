// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_enterprise_proxy_enterprise_proxy_args_doc}
/// The set of arguments for EnterpriseProxy.
/// {@endtemplate}
/// {@macro pulumi_dms_enterprise_proxy_enterprise_proxy_args_doc}
class EnterpriseProxyArgs {
  /// The ID of the database instance.
  final pulumi.Input<String> instanceId;
  /// The password of the database account.
  final pulumi.Input<String> password;
  /// The ID of the tenant.
  final pulumi.Input<String>? tid;
  /// The username of the database account.
  final pulumi.Input<String> username;

  /// Creates a new [EnterpriseProxyArgs].
  /// [instanceId] The ID of the database instance.
  /// [password] The password of the database account.
  /// [tid] The ID of the tenant.
  /// [username] The username of the database account.
  EnterpriseProxyArgs({
    required String instanceId,
    required String password,
    String? tid,
    required String username,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      password = pulumi.Input.asInput<String>(password),
      tid = pulumi.Input.asOptionalInput<String>(tid),
      username = pulumi.Input.asInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'password': password,
      'tid': ?tid,
      'username': username,
    };
  }

  factory EnterpriseProxyArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseProxyArgs(
      instanceId: map['instanceId'] as String,
      password: map['password'] as String,
      tid: map['tid'] == null ? null : map['tid'] as String,
      username: map['username'] as String,
    );
  }
}

