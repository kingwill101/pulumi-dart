// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserSshKey.
class GetUserSshKeyResult {
  final String? encoding;
  /// MD5 message digest of the SSH public key.
  final String? fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// SSH public key.
  final String? publicKey;
  final String? sshPublicKeyId;
  /// Status of the SSH public key. Active means that the key can be used for authentication with an CodeCommit repository. Inactive means that the key cannot be used.
  final String? status;
  final String? username;

  /// Creates a new [GetUserSshKeyResult].
  /// [encoding] Optional.
  /// [fingerprint] MD5 message digest of the SSH public key.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [publicKey] SSH public key.
  /// [sshPublicKeyId] Optional.
  /// [status] Status of the SSH public key. Active means that the key can be used for authentication with an CodeCommit repository. Inactive means that the key cannot be used.
  /// [username] Optional.
  const GetUserSshKeyResult({
    this.encoding,
    this.fingerprint,
    this.id,
    this.publicKey,
    this.sshPublicKeyId,
    this.status,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'fingerprint': ?fingerprint,
      'id': ?id,
      'publicKey': ?publicKey,
      'sshPublicKeyId': ?sshPublicKeyId,
      'status': ?status,
      'username': ?username,
    };
  }

  factory GetUserSshKeyResult.fromMap(Map<String, dynamic> map) {
    return GetUserSshKeyResult(
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sshPublicKeyId: (() { final guardedValue = map['sshPublicKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
