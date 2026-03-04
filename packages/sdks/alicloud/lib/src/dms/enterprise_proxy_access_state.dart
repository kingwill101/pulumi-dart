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
      accessId: (() {
        final guardedValue = map['accessId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accessSecret: (() {
        final guardedValue = map['accessSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      indepAccount: (() {
        final guardedValue = map['indepAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      indepPassword: (() {
        final guardedValue = map['indepPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      originInfo: (() {
        final guardedValue = map['originInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      proxyAccessId: (() {
        final guardedValue = map['proxyAccessId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      proxyId: (() {
        final guardedValue = map['proxyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userId: (() {
        final guardedValue = map['userId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userUid: (() {
        final guardedValue = map['userUid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
