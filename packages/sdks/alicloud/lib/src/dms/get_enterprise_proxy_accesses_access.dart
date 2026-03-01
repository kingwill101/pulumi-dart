// ignore_for_file: unused_element, unnecessary_cast


class GetEnterpriseProxyAccessesAccess {
  /// The authorized account of the security agent.
  final String accessId;
  final String accessSecret;
  /// The authorization time of the security access agent permission.
  final String createTime;
  /// Security Protection authorization ID.
  final String id;
  /// Database account.
  final String indepAccount;
  /// The ID of the instance.
  final String instanceId;
  /// The source information of the security access agent permission is enabled, and the return value is as follows:**Owner Authorization**: The UID of the owner in parentheses.**Work Order Authorization**: The ticket number in parentheses is the number of the user to apply for permission.
  final String originInfo;
  /// Security Protection authorization ID. After the target user is authorized by the security protection agent, the system automatically generates a security protection authorization ID, which is globally unique.
  final String proxyAccessId;
  /// The ID of the security agent.
  final String proxyId;
  /// The user ID.
  final String userId;
  /// User nickname.
  final String userName;
  /// User UID.
  final String userUid;

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
      accessId: map['accessId'] as String,
      accessSecret: map['accessSecret'] as String,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      indepAccount: map['indepAccount'] as String,
      instanceId: map['instanceId'] as String,
      originInfo: map['originInfo'] as String,
      proxyAccessId: map['proxyAccessId'] as String,
      proxyId: map['proxyId'] as String,
      userId: map['userId'] as String,
      userName: map['userName'] as String,
      userUid: map['userUid'] as String,
    );
  }
}

