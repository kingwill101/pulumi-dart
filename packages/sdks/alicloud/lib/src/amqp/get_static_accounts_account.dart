// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStaticAccountsAccount {
  /// Access key.
  final pulumi.Input<String> accessKey;

  /// Create time stamp. Unix timestamp, to millisecond level.
  final pulumi.Input<String> createTime;

  /// The `key` of the resource supplied above.The value is formulated as `&lt;instance_id&gt;:&lt;access_key&gt;`.
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
  /// [id] The `key` of the resource supplied above.The value is formulated as `&lt;instance_id&gt;:&lt;access_key&gt;`.
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
      accessKey: pulumi.Input.fromValue(map['accessKey'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      masterUid: pulumi.Input.fromValue(map['masterUid'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
