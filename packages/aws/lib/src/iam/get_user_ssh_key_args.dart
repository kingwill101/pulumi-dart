// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_user_ssh_key_get_user_ssh_key_args_doc}
/// Arguments for getUserSshKey.
/// {@endtemplate}
/// {@macro pulumi_iam_get_user_ssh_key_get_user_ssh_key_args_doc}
class GetUserSshKeyArgs {
  /// Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  final pulumi.Input<String> encoding;

  /// Unique identifier for the SSH public key.
  final pulumi.Input<String> sshPublicKeyId;

  /// Name of the IAM user associated with the SSH public key.
  final pulumi.Input<String> username;

  /// Creates a new [GetUserSshKeyArgs].
  /// [encoding] Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  /// [sshPublicKeyId] Unique identifier for the SSH public key.
  /// [username] Name of the IAM user associated with the SSH public key.
  GetUserSshKeyArgs({
    required String encoding,
    required String sshPublicKeyId,
    required String username,
  })  : encoding = pulumi.Input.asInput<String>(encoding),
        sshPublicKeyId = pulumi.Input.asInput<String>(sshPublicKeyId),
        username = pulumi.Input.asInput<String>(username);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encoding'] = encoding;
    map['sshPublicKeyId'] = sshPublicKeyId;
    map['username'] = username;
    return map;
  }

  factory GetUserSshKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetUserSshKeyArgs(
      encoding: map['encoding'] as String,
      sshPublicKeyId: map['sshPublicKeyId'] as String,
      username: map['username'] as String,
    );
  }
}
