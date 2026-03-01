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
    pulumi.Output<String>? body,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serverId,
    pulumi.Output<String>? sshKeyId,
    pulumi.Output<String>? userName,
  }) :
      body = pulumi.Input.asOptionalInput<String>(body),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      sshKeyId = pulumi.Input.asOptionalInput<String>(sshKeyId),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      body: map['body'] == null ? null : pulumi.Output.create<String>(map['body'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      sshKeyId: map['sshKeyId'] == null ? null : pulumi.Output.create<String>(map['sshKeyId'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

