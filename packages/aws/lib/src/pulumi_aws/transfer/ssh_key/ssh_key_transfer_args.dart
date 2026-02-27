// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SshKey.
class SshKeyTransferArgs {
  /// The public key portion of an SSH key pair.
  final pulumi.Input<String> body;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Server ID of the Transfer Server (e.g., `s-12345678`)
  final pulumi.Input<String> serverId;

  /// The name of the user account that is assigned to one or more servers.
  final pulumi.Input<String> userName;

  SshKeyTransferArgs({
    required this.body,
    this.region,
    required this.serverId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['body'] = body;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serverId'] = serverId;
    map['userName'] = userName;
    return map;
  }

  factory SshKeyTransferArgs.fromMap(Map<String, dynamic> map) {
    return SshKeyTransferArgs(
      body: pulumi.Input.asInput<String>(map['body']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serverId: pulumi.Input.asInput<String>(map['serverId']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
