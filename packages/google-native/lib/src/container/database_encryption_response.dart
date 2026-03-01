// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of etcd encryption.
class DatabaseEncryptionResponse {
  /// Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  final String keyName;

  /// The desired state of etcd encryption.
  final String state;

  /// Creates a new [DatabaseEncryptionResponse].
  /// [keyName] Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  /// [state] The desired state of etcd encryption.
  DatabaseEncryptionResponse({required this.keyName, required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyName': keyName, 'state': state};
  }

  factory DatabaseEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseEncryptionResponse(
      keyName: map['keyName'] as String,
      state: map['state'] as String,
    );
  }
}
