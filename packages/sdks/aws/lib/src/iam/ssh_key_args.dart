// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_ssh_key_ssh_key_args_doc}
/// The set of arguments for SshKey.
/// {@endtemplate}
/// {@macro pulumi_iam_ssh_key_ssh_key_args_doc}
class SshKeyArgs {
  /// Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  final pulumi.Input<String> encoding;
  /// The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.
  final pulumi.Input<String> publicKey;
  /// The status to assign to the SSH public key. Active means the key can be used for authentication with an AWS CodeCommit repository. Inactive means the key cannot be used. Default is `active`.
  final pulumi.Input<String>? status;
  /// The name of the IAM user to associate the SSH public key with.
  final pulumi.Input<String> username;

  /// Creates a new [SshKeyArgs].
  /// [encoding] Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  /// [publicKey] The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.
  /// [status] The status to assign to the SSH public key. Active means the key can be used for authentication with an AWS CodeCommit repository. Inactive means the key cannot be used. Default is `active`.
  /// [username] The name of the IAM user to associate the SSH public key with.
  SshKeyArgs({
    required this.encoding,
    required this.publicKey,
    this.status,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': encoding,
      'publicKey': publicKey,
      'status': ?status,
      'username': username,
    };
  }

  factory SshKeyArgs.fromMap(Map<String, dynamic> map) {
    return SshKeyArgs(
      encoding: (map['encoding'] as String).input(),
      publicKey: (map['publicKey'] as String).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      username: (map['username'] as String).input(),
    );
  }
}

