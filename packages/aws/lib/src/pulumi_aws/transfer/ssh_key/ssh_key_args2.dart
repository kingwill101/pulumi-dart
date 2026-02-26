// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SshKey.
class SshKeyArgs2 {
  /// The public key portion of an SSH key pair.
  final Input<String> body;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Server ID of the Transfer Server (e.g., `s-12345678`)
  final Input<String> serverId;

  /// The name of the user account that is assigned to one or more servers.
  final Input<String> userName;

  SshKeyArgs2({
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

  factory SshKeyArgs2.fromMap(Map<String, dynamic> map) {
    return SshKeyArgs2(
      body: Input.asInput<String>(map['body']),
      region: Input.asOptionalInput<String>(map['region']),
      serverId: Input.asInput<String>(map['serverId']),
      userName: Input.asInput<String>(map['userName']),
    );
  }
}
