// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUserSshKey.
class GetUserSshKeyArgs {
  /// Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  final pulumi.Input<String> encoding;

  /// Unique identifier for the SSH public key.
  final pulumi.Input<String> sshPublicKeyId;

  /// Name of the IAM user associated with the SSH public key.
  final pulumi.Input<String> username;

  GetUserSshKeyArgs({
    required this.encoding,
    required this.sshPublicKeyId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encoding'] = encoding;
    map['sshPublicKeyId'] = sshPublicKeyId;
    map['username'] = username;
    return map;
  }

  factory GetUserSshKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetUserSshKeyArgs(
      encoding: pulumi.Input.asInput<String>(map['encoding']),
      sshPublicKeyId: pulumi.Input.asInput<String>(map['sshPublicKeyId']),
      username: pulumi.Input.asInput<String>(map['username']),
    );
  }
}
