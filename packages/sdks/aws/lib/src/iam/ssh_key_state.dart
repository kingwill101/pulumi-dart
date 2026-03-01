// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SshKey resources.
class SshKeyState {
  /// Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  final pulumi.Input<String>? encoding;
  /// The MD5 message digest of the SSH public key.
  final pulumi.Input<String>? fingerprint;
  /// The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.
  final pulumi.Input<String>? publicKey;
  /// The unique identifier for the SSH public key.
  final pulumi.Input<String>? sshPublicKeyId;
  /// The status to assign to the SSH public key. Active means the key can be used for authentication with an AWS CodeCommit repository. Inactive means the key cannot be used. Default is `active`.
  final pulumi.Input<String>? status;
  /// The name of the IAM user to associate the SSH public key with.
  final pulumi.Input<String>? username;

  /// Creates a new [SshKeyState].
  /// [encoding] Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  /// [fingerprint] The MD5 message digest of the SSH public key.
  /// [publicKey] The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.
  /// [sshPublicKeyId] The unique identifier for the SSH public key.
  /// [status] The status to assign to the SSH public key. Active means the key can be used for authentication with an AWS CodeCommit repository. Inactive means the key cannot be used. Default is `active`.
  /// [username] The name of the IAM user to associate the SSH public key with.
  SshKeyState({
    pulumi.Output<String>? encoding,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? publicKey,
    pulumi.Output<String>? sshPublicKeyId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? username,
  }) :
      encoding = pulumi.Input.asOptionalInput<String>(encoding),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      sshPublicKeyId = pulumi.Input.asOptionalInput<String>(sshPublicKeyId),
      status = pulumi.Input.asOptionalInput<String>(status),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'fingerprint': ?fingerprint,
      'publicKey': ?publicKey,
      'sshPublicKeyId': ?sshPublicKeyId,
      'status': ?status,
      'username': ?username,
    };
  }

  factory SshKeyState.fromMap(Map<String, dynamic> map) {
    return SshKeyState(
      encoding: map['encoding'] == null ? null : pulumi.Output.create<String>(map['encoding'] as String),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      sshPublicKeyId: map['sshPublicKeyId'] == null ? null : pulumi.Output.create<String>(map['sshPublicKeyId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

