// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserSshKey.
class GetUserSshKeyResult {
  final String encoding;
  /// MD5 message digest of the SSH public key.
  final String fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// SSH public key.
  final String publicKey;
  final String sshPublicKeyId;
  /// Status of the SSH public key. Active means that the key can be used for authentication with an CodeCommit repository. Inactive means that the key cannot be used.
  final String status;
  final String username;

  /// Creates a new [GetUserSshKeyResult].
  /// [encoding] Required.
  /// [fingerprint] MD5 message digest of the SSH public key.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [publicKey] SSH public key.
  /// [sshPublicKeyId] Required.
  /// [status] Status of the SSH public key. Active means that the key can be used for authentication with an CodeCommit repository. Inactive means that the key cannot be used.
  /// [username] Required.
  const GetUserSshKeyResult({
    required this.encoding,
    required this.fingerprint,
    required this.id,
    required this.publicKey,
    required this.sshPublicKeyId,
    required this.status,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': encoding,
      'fingerprint': fingerprint,
      'id': id,
      'publicKey': publicKey,
      'sshPublicKeyId': sshPublicKeyId,
      'status': status,
      'username': username,
    };
  }

  factory GetUserSshKeyResult.fromMap(Map<String, dynamic> map) {
    return GetUserSshKeyResult(
      encoding: map['encoding'] as String,
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      publicKey: map['publicKey'] as String,
      sshPublicKeyId: map['sshPublicKeyId'] as String,
      status: map['status'] as String,
      username: map['username'] as String,
    );
  }
}
