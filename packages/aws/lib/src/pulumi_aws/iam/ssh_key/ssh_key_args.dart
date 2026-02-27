// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SshKey.
class SshKeyArgs {
  /// Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  final pulumi.Input<String> encoding;

  /// The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.
  final pulumi.Input<String> publicKey;

  /// The status to assign to the SSH public key. Active means the key can be used for authentication with an AWS CodeCommit repository. Inactive means the key cannot be used. Default is `active`.
  final pulumi.Input<String>? status;

  /// The name of the IAM user to associate the SSH public key with.
  final pulumi.Input<String> username;

  SshKeyArgs({
    required this.encoding,
    required this.publicKey,
    this.status,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encoding'] = encoding;
    map['publicKey'] = publicKey;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    map['username'] = username;
    return map;
  }

  factory SshKeyArgs.fromMap(Map<String, dynamic> map) {
    return SshKeyArgs(
      encoding: pulumi.Input.asInput<String>(map['encoding']),
      publicKey: pulumi.Input.asInput<String>(map['publicKey']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
      username: pulumi.Input.asInput<String>(map['username']),
    );
  }
}
