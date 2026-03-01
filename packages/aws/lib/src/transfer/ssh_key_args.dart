// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transfer_ssh_key_ssh_key_args_doc}
/// The set of arguments for SshKey.
/// {@endtemplate}
/// {@macro pulumi_transfer_ssh_key_ssh_key_args_doc}
class SshKeyArgs {
  /// The public key portion of an SSH key pair.
  final pulumi.Input<String> body;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Server ID of the Transfer Server (e.g., `s-12345678`)
  final pulumi.Input<String> serverId;
  /// The name of the user account that is assigned to one or more servers.
  final pulumi.Input<String> userName;

  /// Creates a new [SshKeyArgs].
  /// [body] The public key portion of an SSH key pair.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverId] The Server ID of the Transfer Server (e.g., `s-12345678`)
  /// [userName] The name of the user account that is assigned to one or more servers.
  SshKeyArgs({
    required String body,
    String? region,
    required String serverId,
    required String userName,
  }) :
      body = pulumi.Input.asInput<String>(body),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverId = pulumi.Input.asInput<String>(serverId),
      userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'region': ?region,
      'serverId': serverId,
      'userName': userName,
    };
  }

  factory SshKeyArgs.fromMap(Map<String, dynamic> map) {
    return SshKeyArgs(
      body: map['body'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serverId: map['serverId'] as String,
      userName: map['userName'] as String,
    );
  }
}

