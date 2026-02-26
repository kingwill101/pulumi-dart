// ignore_for_file: unused_element, unnecessary_cast

class GetClusterDatabaseEncryption {
  /// The key to use to encrypt/decrypt secrets.
  final String keyName;

  /// ENCRYPTED or DECRYPTED.
  final String state;

  GetClusterDatabaseEncryption({
    required this.keyName,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyName'] = keyName;
    map['state'] = state;
    return map;
  }

  factory GetClusterDatabaseEncryption.fromMap(Map<String, dynamic> map) {
    return GetClusterDatabaseEncryption(
      keyName: map['keyName'] as String,
      state: map['state'] as String,
    );
  }
}
