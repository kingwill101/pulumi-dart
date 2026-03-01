// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_enterprise_proxy_access_enterprise_proxy_access_args_doc}
/// The set of arguments for EnterpriseProxyAccess.
/// {@endtemplate}
/// {@macro pulumi_dms_enterprise_proxy_access_enterprise_proxy_access_args_doc}
class EnterpriseProxyAccessArgs {
  /// Database account.
  final pulumi.Input<String>? indepAccount;
  /// Database password.
  final pulumi.Input<String>? indepPassword;
  /// Security Protection authorization ID. After the target user is authorized by the security protection agent, the system automatically generates a security protection authorization ID, which is globally unique.
  final pulumi.Input<String>? proxyAccessId;
  /// The ID of the security agent.
  final pulumi.Input<String> proxyId;
  /// The user ID.
  final pulumi.Input<String> userId;

  /// Creates a new [EnterpriseProxyAccessArgs].
  /// [indepAccount] Database account.
  /// [indepPassword] Database password.
  /// [proxyAccessId] Security Protection authorization ID. After the target user is authorized by the security protection agent, the system automatically generates a security protection authorization ID, which is globally unique.
  /// [proxyId] The ID of the security agent.
  /// [userId] The user ID.
  EnterpriseProxyAccessArgs({
    String? indepAccount,
    String? indepPassword,
    String? proxyAccessId,
    required String proxyId,
    required String userId,
  }) :
      indepAccount = pulumi.Input.asOptionalInput<String>(indepAccount),
      indepPassword = pulumi.Input.asOptionalInput<String>(indepPassword),
      proxyAccessId = pulumi.Input.asOptionalInput<String>(proxyAccessId),
      proxyId = pulumi.Input.asInput<String>(proxyId),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indepAccount': ?indepAccount,
      'indepPassword': ?indepPassword,
      'proxyAccessId': ?proxyAccessId,
      'proxyId': proxyId,
      'userId': userId,
    };
  }

  factory EnterpriseProxyAccessArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseProxyAccessArgs(
      indepAccount: map['indepAccount'] == null ? null : map['indepAccount'] as String,
      indepPassword: map['indepPassword'] == null ? null : map['indepPassword'] as String,
      proxyAccessId: map['proxyAccessId'] == null ? null : map['proxyAccessId'] as String,
      proxyId: map['proxyId'] as String,
      userId: map['userId'] as String,
    );
  }
}

