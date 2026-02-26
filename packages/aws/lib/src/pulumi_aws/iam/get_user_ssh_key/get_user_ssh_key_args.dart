// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUserSshKey.
class GetUserSshKeyArgs {
  /// Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  final Input<String> encoding;

  /// Unique identifier for the SSH public key.
  final Input<String> sshPublicKeyId;

  /// Name of the IAM user associated with the SSH public key.
  final Input<String> username;

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
      encoding: Input.asInput<String>(map['encoding']),
      sshPublicKeyId: Input.asInput<String>(map['sshPublicKeyId']),
      username: Input.asInput<String>(map['username']),
    );
  }
}
