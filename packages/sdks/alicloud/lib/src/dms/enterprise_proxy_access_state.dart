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
    pulumi.Output<String>? accessId,
    pulumi.Output<String>? accessSecret,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? indepAccount,
    pulumi.Output<String>? indepPassword,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? originInfo,
    pulumi.Output<String>? proxyAccessId,
    pulumi.Output<String>? proxyId,
    pulumi.Output<String>? userId,
    pulumi.Output<String>? userName,
    pulumi.Output<String>? userUid,
  }) :
      accessId = pulumi.Input.asOptionalInput<String>(accessId),
      accessSecret = pulumi.Input.asOptionalInput<String>(accessSecret),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      indepAccount = pulumi.Input.asOptionalInput<String>(indepAccount),
      indepPassword = pulumi.Input.asOptionalInput<String>(indepPassword),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      originInfo = pulumi.Input.asOptionalInput<String>(originInfo),
      proxyAccessId = pulumi.Input.asOptionalInput<String>(proxyAccessId),
      proxyId = pulumi.Input.asOptionalInput<String>(proxyId),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      userName = pulumi.Input.asOptionalInput<String>(userName),
      userUid = pulumi.Input.asOptionalInput<String>(userUid);

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
      accessId: map['accessId'] == null ? null : pulumi.Output.create<String>(map['accessId'] as String),
      accessSecret: map['accessSecret'] == null ? null : pulumi.Output.create<String>(map['accessSecret'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      indepAccount: map['indepAccount'] == null ? null : pulumi.Output.create<String>(map['indepAccount'] as String),
      indepPassword: map['indepPassword'] == null ? null : pulumi.Output.create<String>(map['indepPassword'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      originInfo: map['originInfo'] == null ? null : pulumi.Output.create<String>(map['originInfo'] as String),
      proxyAccessId: map['proxyAccessId'] == null ? null : pulumi.Output.create<String>(map['proxyAccessId'] as String),
      proxyId: map['proxyId'] == null ? null : pulumi.Output.create<String>(map['proxyId'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
      userUid: map['userUid'] == null ? null : pulumi.Output.create<String>(map['userUid'] as String),
    );
  }
}

