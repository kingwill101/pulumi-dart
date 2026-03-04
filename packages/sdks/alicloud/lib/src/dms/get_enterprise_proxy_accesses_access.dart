// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnterpriseProxyAccessesAccess {
  /// The authorized account of the security agent.
  final pulumi.Input<String> accessId;
  final pulumi.Input<String> accessSecret;

  /// The authorization time of the security access agent permission.
  final pulumi.Input<String> createTime;

  /// Security Protection authorization ID.
  final pulumi.Input<String> id;

  /// Database account.
  final pulumi.Input<String> indepAccount;

  /// The ID of the instance.
  final pulumi.Input<String> instanceId;

  /// The source information of the security access agent permission is enabled, and the return value is as follows:**Owner Authorization**: The UID of the owner in parentheses.**Work Order Authorization**: The ticket number in parentheses is the number of the user to apply for permission.
  final pulumi.Input<String> originInfo;

  /// Security Protection authorization ID. After the target user is authorized by the security protection agent, the system automatically generates a security protection authorization ID, which is globally unique.
  final pulumi.Input<String> proxyAccessId;

  /// The ID of the security agent.
  final pulumi.Input<String> proxyId;

  /// The user ID.
  final pulumi.Input<String> userId;

  /// User nickname.
  final pulumi.Input<String> userName;

  /// User UID.
  final pulumi.Input<String> userUid;

  /// Creates a new [GetEnterpriseProxyAccessesAccess].
  /// [accessId] The authorized account of the security agent.
  /// [accessSecret] Required.
  /// [createTime] The authorization time of the security access agent permission.
  /// [id] Security Protection authorization ID.
  /// [indepAccount] Database account.
  /// [instanceId] The ID of the instance.
  /// [originInfo] The source information of the security access agent permission is enabled, and the return value is as follows:**Owner Authorization**: The UID of the owner in parentheses.**Work Order Authorization**: The ticket number in parentheses is the number of the user to apply for permission.
  /// [proxyAccessId] Security Protection authorization ID. After the target user is authorized by the security protection agent, the system automatically generates a security protection authorization ID, which is globally unique.
  /// [proxyId] The ID of the security agent.
  /// [userId] The user ID.
  /// [userName] User nickname.
  /// [userUid] User UID.
  GetEnterpriseProxyAccessesAccess({
    required this.accessId,
    required this.accessSecret,
    required this.createTime,
    required this.id,
    required this.indepAccount,
    required this.instanceId,
    required this.originInfo,
    required this.proxyAccessId,
    required this.proxyId,
    required this.userId,
    required this.userName,
    required this.userUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessId': accessId,
      'accessSecret': accessSecret,
      'createTime': createTime,
      'id': id,
      'indepAccount': indepAccount,
      'instanceId': instanceId,
      'originInfo': originInfo,
      'proxyAccessId': proxyAccessId,
      'proxyId': proxyId,
      'userId': userId,
      'userName': userName,
      'userUid': userUid,
    };
  }

  factory GetEnterpriseProxyAccessesAccess.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseProxyAccessesAccess(
      accessId: pulumi.Input.fromValue(map['accessId'] as String),
      accessSecret: pulumi.Input.fromValue(map['accessSecret'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      indepAccount: pulumi.Input.fromValue(map['indepAccount'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      originInfo: pulumi.Input.fromValue(map['originInfo'] as String),
      proxyAccessId: pulumi.Input.fromValue(map['proxyAccessId'] as String),
      proxyId: pulumi.Input.fromValue(map['proxyId'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
      userUid: pulumi.Input.fromValue(map['userUid'] as String),
    );
  }
}
