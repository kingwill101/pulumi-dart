// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStaticAccountsAccount {
  /// Access key.
  final pulumi.Input<String> accessKey;
  /// Create time stamp. Unix timestamp, to millisecond level.
  final pulumi.Input<String> createTime;
  /// The `key` of the resource supplied above.The value is formulated as `<instance_id>:<access_key>`.
  final pulumi.Input<String> id;
  /// InstanceId
  final pulumi.Input<String> instanceId;
  /// The ID of the user's primary account.
  final pulumi.Input<String> masterUid;
  /// Static password.
  final pulumi.Input<String> password;
  /// Static username.
  final pulumi.Input<String> userName;

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
      accessKey: (map['accessKey'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      masterUid: (map['masterUid'] as String).input(),
      password: (map['password'] as String).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

