// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StaticAccount resources.
class StaticAccountState {
  /// Access key.
  final pulumi.Input<String>? accessKey;
  /// The timestamp that indicates when the pair of static username and password was created.
  final pulumi.Input<int>? createTime;
  /// Amqp instance ID.
  final pulumi.Input<String>? instanceId;
  /// The ID of the user's primary account.
  final pulumi.Input<String>? masterUid;
  /// The static password.
  final pulumi.Input<String>? password;
  /// Secret key.
  final pulumi.Input<String>? secretKey;
  /// The static username.
  final pulumi.Input<String>? userName;

  /// Creates a new [StaticAccountState].
  /// [accessKey] Access key.
  /// [createTime] The timestamp that indicates when the pair of static username and password was created.
  /// [instanceId] Amqp instance ID.
  /// [masterUid] The ID of the user's primary account.
  /// [password] The static password.
  /// [secretKey] Secret key.
  /// [userName] The static username.
  StaticAccountState({
    pulumi.Output<String>? accessKey,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? masterUid,
    pulumi.Output<String>? password,
    pulumi.Output<String>? secretKey,
    pulumi.Output<String>? userName,
  }) :
      accessKey = pulumi.Input.asOptionalInput<String>(accessKey),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      masterUid = pulumi.Input.asOptionalInput<String>(masterUid),
      password = pulumi.Input.asOptionalInput<String>(password),
      secretKey = pulumi.Input.asOptionalInput<String>(secretKey),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'createTime': ?createTime,
      'instanceId': ?instanceId,
      'masterUid': ?masterUid,
      'password': ?password,
      'secretKey': ?secretKey,
      'userName': ?userName,
    };
  }

  factory StaticAccountState.fromMap(Map<String, dynamic> map) {
    return StaticAccountState(
      accessKey: map['accessKey'] == null ? null : pulumi.Output.create<String>(map['accessKey'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      masterUid: map['masterUid'] == null ? null : pulumi.Output.create<String>(map['masterUid'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      secretKey: map['secretKey'] == null ? null : pulumi.Output.create<String>(map['secretKey'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

