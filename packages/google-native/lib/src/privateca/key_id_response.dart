// ignore_for_file: unused_element, unnecessary_cast

/// A KeyId identifies a specific public key, usually by hashing the public key.
class KeyIdResponse {
  /// Optional. The value of this KeyId encoded in lowercase hexadecimal. This is most likely the 160 bit SHA-1 hash of the public key.
  final String keyId;

  /// Creates a new [KeyIdResponse].
  /// [keyId] Optional. The value of this KeyId encoded in lowercase hexadecimal. This is most likely the 160 bit SHA-1 hash of the public key.
  KeyIdResponse({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    return map;
  }

  factory KeyIdResponse.fromMap(Map<String, dynamic> map) {
    return KeyIdResponse(
      keyId: map['keyId'] as String,
    );
  }
}
