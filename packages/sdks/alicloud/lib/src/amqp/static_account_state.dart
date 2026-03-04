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
      accessKey: (() {
        final guardedValue = map['accessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterUid: (() {
        final guardedValue = map['masterUid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretKey: (() {
        final guardedValue = map['secretKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
