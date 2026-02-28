// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of etcd encryption.
class DatabaseEncryptionResponseContainerV1beta1 {
  /// Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  final String keyName;

  /// The desired state of etcd encryption.
  final String state;

  /// Creates a new [DatabaseEncryptionResponseContainerV1beta1].
  /// [keyName] Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key
  /// [state] The desired state of etcd encryption.
  DatabaseEncryptionResponseContainerV1beta1({
    required this.keyName,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyName'] = keyName;
    map['state'] = state;
    return map;
  }

  factory DatabaseEncryptionResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DatabaseEncryptionResponseContainerV1beta1(
      keyName: map['keyName'] as String,
      state: map['state'] as String,
    );
  }
}
