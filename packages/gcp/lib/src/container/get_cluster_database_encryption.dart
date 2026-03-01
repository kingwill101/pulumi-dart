// ignore_for_file: unused_element, unnecessary_cast

class GetClusterDatabaseEncryption {
  /// The key to use to encrypt/decrypt secrets.
  final String keyName;

  /// ENCRYPTED or DECRYPTED.
  final String state;

  /// Creates a new [GetClusterDatabaseEncryption].
  /// [keyName] The key to use to encrypt/decrypt secrets.
  /// [state] ENCRYPTED or DECRYPTED.
  GetClusterDatabaseEncryption({required this.keyName, required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyName': keyName, 'state': state};
  }

  factory GetClusterDatabaseEncryption.fromMap(Map<String, dynamic> map) {
    return GetClusterDatabaseEncryption(
      keyName: map['keyName'] as String,
      state: map['state'] as String,
    );
  }
}
