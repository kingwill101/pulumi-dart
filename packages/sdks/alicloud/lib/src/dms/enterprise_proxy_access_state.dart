// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnterpriseProxyAccess resources.
class EnterpriseProxyAccessState {
  /// The authorized account of the security agent.
  final pulumi.Input<String>? accessId;
  /// Secure access agent authorization password.
  final pulumi.Input<String>? accessSecret;
  final pulumi.Input<String>? createTime;
  /// Database account.
  final pulumi.Input<String>? indepAccount;
  /// Database password.
  final pulumi.Input<String>? indepPassword;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The source information of the security access agent permission is enabled, and the return value is as follows:
  /// * **Owner Authorization**: The UID of the owner in parentheses.
  /// * **Work Order Authorization**: The ticket number in parentheses is the number of the user to apply for permission.
  final pulumi.Input<String>? originInfo;
  /// Security Protection authorization ID. After the target user is authorized by the security protection agent, the system automatically generates a security protection authorization ID, which is globally unique.
  final pulumi.Input<String>? proxyAccessId;
  /// The ID of the security agent.
  final pulumi.Input<String>? proxyId;
  /// The user ID.
  final pulumi.Input<String>? userId;
  /// User nickname.
  final pulumi.Input<String>? userName;
  /// User UID.
  final pulumi.Input<String>? userUid;

  /// Creates a new [EnterpriseProxyAccessState].
  /// [accessId] The authorized account of the security agent.
  /// [accessSecret] Secure access agent authorization password.
  /// [createTime] Optional.
  /// [indepAccount] Database account.
  /// [indepPassword] Database password.
  /// [instanceId] The ID of the instance.
  /// [originInfo] The source information of the security access agent permission is enabled, and the return value is as follows:
  /// [proxyAccessId] Security Protection authorization ID. After the target user is authorized by the security protection agent, the system automatically generates a security protection authorization ID, which is globally unique.
  /// [proxyId] The ID of the security agent.
  /// [userId] The user ID.
  /// [userName] User nickname.
  /// [userUid] User UID.
  EnterpriseProxyAccessState({
    this.accessId,
    this.accessSecret,
    this.createTime,
    this.indepAccount,
    this.indepPassword,
    this.instanceId,
    this.originInfo,
    this.proxyAccessId,
    this.proxyId,
    this.userId,
    this.userName,
    this.userUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessId': ?accessId,
      'accessSecret': ?accessSecret,
      'createTime': ?createTime,
      'indepAccount': ?indepAccount,
      'indepPassword': ?indepPassword,
      'instanceId': ?instanceId,
      'originInfo': ?originInfo,
      'proxyAccessId': ?proxyAccessId,
      'proxyId': ?proxyId,
      'userId': ?userId,
      'userName': ?userName,
      'userUid': ?userUid,
    };
  }

  factory EnterpriseProxyAccessState.fromMap(Map<String, dynamic> map) {
    return EnterpriseProxyAccessState(
      accessId: map['accessId'] == null ? null : (map['accessId'] as String).input(),
      accessSecret: map['accessSecret'] == null ? null : (map['accessSecret'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      indepAccount: map['indepAccount'] == null ? null : (map['indepAccount'] as String).input(),
      indepPassword: map['indepPassword'] == null ? null : (map['indepPassword'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      originInfo: map['originInfo'] == null ? null : (map['originInfo'] as String).input(),
      proxyAccessId: map['proxyAccessId'] == null ? null : (map['proxyAccessId'] as String).input(),
      proxyId: map['proxyId'] == null ? null : (map['proxyId'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
      userUid: map['userUid'] == null ? null : (map['userUid'] as String).input(),
    );
  }
}

