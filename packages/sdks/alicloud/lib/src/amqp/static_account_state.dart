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
    this.accessKey,
    this.createTime,
    this.instanceId,
    this.masterUid,
    this.password,
    this.secretKey,
    this.userName,
  });

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
      accessKey: map['accessKey'] == null ? null : (map['accessKey'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as int).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      masterUid: map['masterUid'] == null ? null : (map['masterUid'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      secretKey: map['secretKey'] == null ? null : (map['secretKey'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

