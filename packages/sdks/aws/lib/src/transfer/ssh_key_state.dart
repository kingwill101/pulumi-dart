// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SshKey resources.
class SshKeyState {
  /// The public key portion of an SSH key pair.
  final pulumi.Input<String>? body;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Server ID of the Transfer Server (e.g., `s-12345678`)
  final pulumi.Input<String>? serverId;
  final pulumi.Input<String>? sshKeyId;

  /// The name of the user account that is assigned to one or more servers.
  final pulumi.Input<String>? userName;

  /// Creates a new [SshKeyState].
  /// [body] The public key portion of an SSH key pair.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverId] The Server ID of the Transfer Server (e.g., `s-12345678`)
  /// [sshKeyId] Optional.
  /// [userName] The name of the user account that is assigned to one or more servers.
  SshKeyState({
    this.body,
    this.region,
    this.serverId,
    this.sshKeyId,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'region': ?region,
      'serverId': ?serverId,
      'sshKeyId': ?sshKeyId,
      'userName': ?userName,
    };
  }

  factory SshKeyState.fromMap(Map<String, dynamic> map) {
    return SshKeyState(
      body: (() {
        final guardedValue = map['body'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverId: (() {
        final guardedValue = map['serverId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sshKeyId: (() {
        final guardedValue = map['sshKeyId'];
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
