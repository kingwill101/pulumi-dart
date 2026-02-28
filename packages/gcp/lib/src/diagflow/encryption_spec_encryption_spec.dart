// ignore_for_file: unused_element, unnecessary_cast

class EncryptionSpecEncryptionSpec {
  /// The name of customer-managed encryption key that is used to secure a resource and its sub-resources.
  /// If empty, the resource is secured by the default Google encryption key.
  /// Only the key in the same location as this resource is allowed to be used for encryption.
  /// Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{key}
  final String kmsKey;

  /// Creates a new [EncryptionSpecEncryptionSpec].
  /// [kmsKey] The name of customer-managed encryption key that is used to secure a resource and its sub-resources.
  EncryptionSpecEncryptionSpec({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory EncryptionSpecEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return EncryptionSpecEncryptionSpec(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
