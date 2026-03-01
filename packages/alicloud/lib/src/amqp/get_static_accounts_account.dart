// ignore_for_file: unused_element, unnecessary_cast


class GetStaticAccountsAccount {
  /// Access key.
  final String accessKey;
  /// Create time stamp. Unix timestamp, to millisecond level.
  final String createTime;
  /// The `key` of the resource supplied above.The value is formulated as `<instance_id>:<access_key>`.
  final String id;
  /// InstanceId
  final String instanceId;
  /// The ID of the user's primary account.
  final String masterUid;
  /// Static password.
  final String password;
  /// Static username.
  final String userName;

  /// Creates a new [GetStaticAccountsAccount].
  /// [accessKey] Access key.
  /// [createTime] Create time stamp. Unix timestamp, to millisecond level.
  /// [id] The `key` of the resource supplied above.The value is formulated as `<instance_id>:<access_key>`.
  /// [instanceId] InstanceId
  /// [masterUid] The ID of the user's primary account.
  /// [password] Static password.
  /// [userName] Static username.
  GetStaticAccountsAccount({
    required this.accessKey,
    required this.createTime,
    required this.id,
    required this.instanceId,
    required this.masterUid,
    required this.password,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
      'createTime': createTime,
      'id': id,
      'instanceId': instanceId,
      'masterUid': masterUid,
      'password': password,
      'userName': userName,
    };
  }

  factory GetStaticAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetStaticAccountsAccount(
      accessKey: map['accessKey'] as String,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      masterUid: map['masterUid'] as String,
      password: map['password'] as String,
      userName: map['userName'] as String,
    );
  }
}

