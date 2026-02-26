// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SshKey.
class SshKeyArgs {
  /// Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  final Input<String> encoding;

  /// The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.
  final Input<String> publicKey;

  /// The status to assign to the SSH public key. Active means the key can be used for authentication with an AWS CodeCommit repository. Inactive means the key cannot be used. Default is <span pulumi-lang-nodejs="`active`" pulumi-lang-dotnet="`Active`" pulumi-lang-go="`active`" pulumi-lang-python="`active`" pulumi-lang-yaml="`active`" pulumi-lang-java="`active`">`active`</span>.
  final Input<String>? status;

  /// The name of the IAM user to associate the SSH public key with.
  final Input<String> username;

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
      encoding: Input.asInput<String>(map['encoding']),
      publicKey: Input.asInput<String>(map['publicKey']),
      status: Input.asOptionalInput<String>(map['status']),
      username: Input.asInput<String>(map['username']),
    );
  }
}
